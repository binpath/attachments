using {sap.attachments as db} from '../../index.cds';

@path    : 'media'
@protocol: 'none'
service AttachmentsService {

    entity Images    as projection on db.Images;
    entity Documents as projection on db.Documents;

    action onGET(origin : String)      returns {
        objects : String[];
    };

    action onSTREAM(fileName : String) returns {
        stream : LargeBinary;
    };

}