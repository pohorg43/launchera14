.class public interface abstract Lcom/oplus/log/uploader/FileZipper$OnZipFileListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/log/uploader/FileZipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnZipFileListener"
.end annotation


# virtual methods
.method public abstract onZipError(ILjava/lang/String;)V
.end method

.method public abstract onZipOk(ILjava/io/File;)V
.end method
