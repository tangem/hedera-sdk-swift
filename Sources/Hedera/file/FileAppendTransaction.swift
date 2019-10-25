import SwiftProtobuf
import Foundation

public class FileAppendTransaction: TransactionBuilder {
    public override init(client: Client) {
        super.init(client: client)

        body.fileAppend = Proto_FileAppendTransactionBody()
    }

    public func setContents(_ data: Data) -> Self {
        body.fileAppend.contents = data 

        return self
    }

    public func setContents(_ bytes: [UInt8]) -> Self {
        body.fileAppend.contents = Data(bytes) 

        return self
    }

    public func setContents(_ string: String) -> Self {
        body.fileAppend.contents = Data(Array(string.utf8))

        return self
    }

    public func setFileId(_ id: FileId) -> Self {
        body.fileAppend.fileID = id.toProto()

        return self
    }

    override func executeClosure(_ grpc: HederaGRPCClient, _ tx: Proto_Transaction) throws -> Proto_TransactionResponse {
        try grpc.fileService.appendContent(tx)
    }
}
