.class public Lcom/oplus/log/desc/model/LogDetailModel;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final LOG_CODE_LEVEL:Ljava/lang/String;

.field private final LOG_MESSAGE:Ljava/lang/String;

.field private final LOG_PROCESS_ID:Ljava/lang/String;

.field private final LOG_PROCESS_NAME:Ljava/lang/String;

.field private final LOG_TAG:Ljava/lang/String;

.field private level:I

.field private message:Ljava/lang/String;

.field private pid:Ljava/lang/String;

.field private processName:Ljava/lang/String;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "m"

    iput-object v0, p0, Lcom/oplus/log/desc/model/LogDetailModel;->LOG_MESSAGE:Ljava/lang/String;

    const-string v0, "t"

    iput-object v0, p0, Lcom/oplus/log/desc/model/LogDetailModel;->LOG_TAG:Ljava/lang/String;

    const-string v0, "p"

    iput-object v0, p0, Lcom/oplus/log/desc/model/LogDetailModel;->LOG_PROCESS_NAME:Ljava/lang/String;

    const-string v0, "l"

    iput-object v0, p0, Lcom/oplus/log/desc/model/LogDetailModel;->LOG_CODE_LEVEL:Ljava/lang/String;

    const-string v0, "pid"

    iput-object v0, p0, Lcom/oplus/log/desc/model/LogDetailModel;->LOG_PROCESS_ID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLevel()I
    .registers 1

    iget p0, p0, Lcom/oplus/log/desc/model/LogDetailModel;->level:I

    return p0
.end method

.method public getLevel(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1e

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1b

    const/4 p0, 0x3

    if-eq p1, p0, :cond_18

    const/4 p0, 0x4

    if-eq p1, p0, :cond_15

    const/4 p0, 0x5

    if-eq p1, p0, :cond_12

    const-string p0, ""

    return-object p0

    :cond_12
    const-string p0, "error"

    return-object p0

    :cond_15
    const-string p0, "warn"

    return-object p0

    :cond_18
    const-string p0, "info"

    return-object p0

    :cond_1b
    const-string p0, "debug"

    return-object p0

    :cond_1e
    const-string p0, "verbose"

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/desc/model/LogDetailModel;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getPid()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/desc/model/LogDetailModel;->pid:Ljava/lang/String;

    return-object p0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/desc/model/LogDetailModel;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/desc/model/LogDetailModel;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public initLog(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3

    const-string v0, "m"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/desc/model/LogDetailModel;->message:Ljava/lang/String;

    const-string v0, "t"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/desc/model/LogDetailModel;->tag:Ljava/lang/String;

    const-string v0, "p"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/desc/model/LogDetailModel;->processName:Ljava/lang/String;

    const-string v0, "l"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/oplus/log/desc/model/LogDetailModel;->level:I

    const-string v0, "pid"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/log/desc/model/LogDetailModel;->pid:Ljava/lang/String;

    return-void
.end method

.method public parseFromJson(Ljava/lang/String;)Lcom/oplus/log/desc/model/LogDetailModel;
    .registers 2

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/log/desc/model/LogDetailModel;->initLog(Lcom/alibaba/fastjson/JSONObject;)V

    return-object p0
.end method

.method public setLevel(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/log/desc/model/LogDetailModel;->level:I

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/desc/model/LogDetailModel;->message:Ljava/lang/String;

    return-void
.end method

.method public setPid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/desc/model/LogDetailModel;->pid:Ljava/lang/String;

    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/desc/model/LogDetailModel;->processName:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/desc/model/LogDetailModel;->tag:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "LogDetailModel{message=\'"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/log/desc/model/LogDetailModel;->message:Ljava/lang/String;

    const/16 v2, 0x27

    const-string v3, ", tag=\'"

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/log/desc/model/LogDetailModel;->tag:Ljava/lang/String;

    const-string v3, ", processName=\'"

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/log/desc/model/LogDetailModel;->processName:Ljava/lang/String;

    const-string v3, ", level="

    invoke-static {v0, v1, v2, v3}, Landroidx/room/util/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)V

    iget v1, p0, Lcom/oplus/log/desc/model/LogDetailModel;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/log/desc/model/LogDetailModel;->pid:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
