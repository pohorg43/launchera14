.class public Lcom/oplus/log/desc/model/UserTraceLogItemModel;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final LOG_CONTENT:Ljava/lang/String;

.field private final LOG_FLAG:Ljava/lang/String;

.field private final LOG_THREAD_ID:Ljava/lang/String;

.field private final LOG_THREAD_NAME:Ljava/lang/String;

.field private final LOG_TIME:Ljava/lang/String;

.field private final LOG_TYPE_HEADER:I

.field private id:Ljava/lang/Integer;

.field private logDetail:Lcom/oplus/log/desc/model/LogDetailModel;

.field private logFlag:Ljava/lang/Integer;

.field private threadId:Ljava/lang/Long;

.field private threadName:Ljava/lang/String;

.field private time:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->LOG_TYPE_HEADER:I

    const-string v0, "c"

    iput-object v0, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->LOG_CONTENT:Ljava/lang/String;

    const-string v0, "f"

    iput-object v0, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->LOG_FLAG:Ljava/lang/String;

    const-string v0, "l"

    iput-object v0, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->LOG_TIME:Ljava/lang/String;

    const-string v0, "n"

    iput-object v0, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->LOG_THREAD_NAME:Ljava/lang/String;

    const-string v0, "i"

    iput-object v0, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->LOG_THREAD_ID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public convert2log()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->convert2logV2()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public convert2logV2()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->logDetail:Lcom/oplus/log/desc/model/LogDetailModel;

    invoke-virtual {v3}, Lcom/oplus/log/desc/model/LogDetailModel;->getPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->threadId:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->threadName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->logDetail:Lcom/oplus/log/desc/model/LogDetailModel;

    invoke-virtual {v1}, Lcom/oplus/log/desc/model/LogDetailModel;->getLevel()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/oplus/log/desc/model/LogDetailModel;->getLevel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->logDetail:Lcom/oplus/log/desc/model/LogDetailModel;

    invoke-virtual {v1}, Lcom/oplus/log/desc/model/LogDetailModel;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->logDetail:Lcom/oplus/log/desc/model/LogDetailModel;

    invoke-virtual {p0}, Lcom/oplus/log/desc/model/LogDetailModel;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getId()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->id:Ljava/lang/Integer;

    return-object p0
.end method

.method public getLogDetail()Lcom/oplus/log/desc/model/LogDetailModel;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->logDetail:Lcom/oplus/log/desc/model/LogDetailModel;

    return-object p0
.end method

.method public getLogFlag()Ljava/lang/Integer;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->logFlag:Ljava/lang/Integer;

    return-object p0
.end method

.method public getThreadId()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->threadId:Ljava/lang/Long;

    return-object p0
.end method

.method public getThreadName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->threadName:Ljava/lang/String;

    return-object p0
.end method

.method public getTime()Ljava/lang/Long;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->time:Ljava/lang/Long;

    return-object p0
.end method

.method public parseFromJson(Ljava/lang/String;)Lcom/oplus/log/desc/model/UserTraceLogItemModel;
    .registers 4

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p0

    const-string p1, "f"

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_13

    const/4 p0, 0x0

    return-object p0

    :cond_13
    new-instance v0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;

    invoke-direct {v0}, Lcom/oplus/log/desc/model/UserTraceLogItemModel;-><init>()V

    const-string v1, "l"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->setTime(Ljava/lang/Long;)V

    const-string v1, "i"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->setThreadId(Ljava/lang/Long;)V

    const-string v1, "n"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->setThreadName(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->setLogFlag(Ljava/lang/Integer;)V

    invoke-virtual {v0}, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->getLogFlag()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v1, "c"

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/log/desc/common/LogFactory;->createLogDetail(ILjava/lang/String;)Lcom/oplus/log/desc/model/LogDetailModel;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->setLogDetail(Lcom/oplus/log/desc/model/LogDetailModel;)V

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setLogDetail(Lcom/oplus/log/desc/model/LogDetailModel;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->logDetail:Lcom/oplus/log/desc/model/LogDetailModel;

    return-void
.end method

.method public setLogFlag(Ljava/lang/Integer;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->logFlag:Ljava/lang/Integer;

    return-void
.end method

.method public setThreadId(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->threadId:Ljava/lang/Long;

    return-void
.end method

.method public setThreadName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->threadName:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/Long;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->time:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "UserTraceLogItemModel{id="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->logFlag:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->time:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", threadName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->threadName:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", threadId="

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->threadId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", logDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/log/desc/model/UserTraceLogItemModel;->logDetail:Lcom/oplus/log/desc/model/LogDetailModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
