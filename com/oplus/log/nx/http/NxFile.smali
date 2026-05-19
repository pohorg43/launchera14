.class public Lcom/oplus/log/nx/http/NxFile;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private fileName:Ljava/lang/String;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAbosulteName()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oplus/log/nx/http/NxFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/log/nx/http/NxFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/http/NxFile;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public getPath()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/nx/http/NxFile;->path:Ljava/lang/String;

    return-object p0
.end method

.method public setFileName(Ljava/lang/String;)Lcom/oplus/log/nx/http/NxFile;
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/nx/http/NxFile;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/oplus/log/nx/http/NxFile;
    .registers 3

    iput-object p1, p0, Lcom/oplus/log/nx/http/NxFile;->path:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_10
    return-object p0
.end method
