.class public Lcom/oplus/log/uploader/ResponseWrapper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private TAG:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private statusCode:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/uploader/ResponseWrapper;->TAG:Ljava/lang/String;

    iput p1, p0, Lcom/oplus/log/uploader/ResponseWrapper;->statusCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/log/uploader/ResponseWrapper;->TAG:Ljava/lang/String;

    iput p1, p0, Lcom/oplus/log/uploader/ResponseWrapper;->statusCode:I

    iput-object p2, p0, Lcom/oplus/log/uploader/ResponseWrapper;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/uploader/ResponseWrapper;->message:Ljava/lang/String;

    return-object p0
.end method

.method public getReportId()Ljava/lang/String;
    .registers 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/oplus/log/uploader/ResponseWrapper;->message:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "reportId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception v0

    invoke-static {}, Lcom/oplus/log/HLog;->isPrint()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_35

    :cond_1f
    iget-object p0, p0, Lcom/oplus/log/uploader/ResponseWrapper;->TAG:Ljava/lang/String;

    const-string v1, "json exception:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    const-string p0, ""

    return-object p0
.end method

.method public getStatusCode()I
    .registers 1

    iget p0, p0, Lcom/oplus/log/uploader/ResponseWrapper;->statusCode:I

    return p0
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/uploader/ResponseWrapper;->message:Ljava/lang/String;

    return-void
.end method
