.class public Lcom/oplus/log/nx/http/NxResponse;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private code:I

.field private file:Ljava/io/File;

.field private header:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/log/nx/http/NxResponse;->code:I

    iget-object p1, p0, Lcom/oplus/log/nx/http/NxResponse;->message:Ljava/lang/String;

    iput-object p1, p0, Lcom/oplus/log/nx/http/NxResponse;->message:Ljava/lang/String;

    iget-object p1, p0, Lcom/oplus/log/nx/http/NxResponse;->header:Ljava/util/Map;

    iput-object p1, p0, Lcom/oplus/log/nx/http/NxResponse;->header:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/log/nx/http/NxResponse;->code:I

    iput-object p2, p0, Lcom/oplus/log/nx/http/NxResponse;->message:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/log/nx/http/NxResponse;->header:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 1

    iget p0, p0, Lcom/oplus/log/nx/http/NxResponse;->code:I

    return p0
.end method

.method public getFile()Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/http/NxResponse;->file:Ljava/io/File;

    return-object p0
.end method

.method public getHeader()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/log/nx/http/NxResponse;->header:Ljava/util/Map;

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/http/NxResponse;->message:Ljava/lang/String;

    return-object p0
.end method

.method public setCode(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/log/nx/http/NxResponse;->code:I

    return-void
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/nx/http/NxResponse;->file:Ljava/io/File;

    return-void
.end method

.method public setHeader(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/log/nx/http/NxResponse;->header:Ljava/util/Map;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/nx/http/NxResponse;->message:Ljava/lang/String;

    return-void
.end method
