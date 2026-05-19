.class public Lcom/oplus/log/nx/http/NxRequest;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final GET:Ljava/lang/String; = "GET"

.field public static final POST:Ljava/lang/String; = "POST"


# instance fields
.field private file:Ljava/io/File;

.field private header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private jsonDatas:Ljava/lang/String;

.field private method:Ljava/lang/String;

.field private nxFile:Lcom/oplus/log/nx/http/NxFile;

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "POST"

    iput-object v0, p0, Lcom/oplus/log/nx/http/NxRequest;->method:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/log/nx/http/NxRequest;
    .registers 4

    iget-object v0, p0, Lcom/oplus/log/nx/http/NxRequest;->header:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/log/nx/http/NxRequest;->header:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lcom/oplus/log/nx/http/NxRequest;->header:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addHeaders(Ljava/util/Map;)Lcom/oplus/log/nx/http/NxRequest;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oplus/log/nx/http/NxRequest;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oplus/log/nx/http/NxRequest;->header:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/log/nx/http/NxRequest;->header:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lcom/oplus/log/nx/http/NxRequest;->header:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/log/nx/http/NxRequest;
    .registers 4

    iget-object v0, p0, Lcom/oplus/log/nx/http/NxRequest;->params:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/log/nx/http/NxRequest;->params:Ljava/util/Map;

    :cond_b
    iget-object v0, p0, Lcom/oplus/log/nx/http/NxRequest;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public getFile()Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/http/NxRequest;->file:Ljava/io/File;

    return-object p0
.end method

.method public getHeader()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/log/nx/http/NxRequest;->header:Ljava/util/Map;

    return-object p0
.end method

.method public getJsonDatas()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/http/NxRequest;->jsonDatas:Ljava/lang/String;

    return-object p0
.end method

.method public getMethod()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/oplus/log/nx/http/NxRequest;->method:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "POST"

    iput-object v0, p0, Lcom/oplus/log/nx/http/NxRequest;->method:Ljava/lang/String;

    :cond_c
    iget-object p0, p0, Lcom/oplus/log/nx/http/NxRequest;->method:Ljava/lang/String;

    return-object p0
.end method

.method public getNxFile()Lcom/oplus/log/nx/http/NxFile;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/http/NxRequest;->nxFile:Lcom/oplus/log/nx/http/NxFile;

    return-object p0
.end method

.method public getParams()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/log/nx/http/NxRequest;->params:Ljava/util/Map;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/http/NxRequest;->url:Ljava/lang/String;

    return-object p0
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/nx/http/NxRequest;->file:Ljava/io/File;

    return-void
.end method

.method public setJsonDatas(Ljava/lang/String;)Lcom/oplus/log/nx/http/NxRequest;
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/nx/http/NxRequest;->jsonDatas:Ljava/lang/String;

    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/nx/http/NxRequest;->method:Ljava/lang/String;

    return-void
.end method

.method public setNxFile(Lcom/oplus/log/nx/http/NxFile;)Lcom/oplus/log/nx/http/NxRequest;
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/nx/http/NxRequest;->nxFile:Lcom/oplus/log/nx/http/NxFile;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/oplus/log/nx/http/NxRequest;
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/nx/http/NxRequest;->url:Ljava/lang/String;

    return-object p0
.end method
