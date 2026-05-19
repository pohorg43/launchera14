.class final Lcom/oplus/log/uploader/FileZipper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/log/uploader/FileZipper;->getFiles(JJLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$prefixName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/uploader/FileZipper$1;->val$prefixName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_3d

    const-string p1, ".dog3"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_23

    const-string p1, ".dog1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_23

    const-string p1, ".dog2"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    move p1, v0

    goto :goto_24

    :cond_23
    :goto_23
    move p1, v1

    :goto_24
    iget-object v2, p0, Lcom/oplus/log/uploader/FileZipper$1;->val$prefixName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    iget-object p0, p0, Lcom/oplus/log/uploader/FileZipper$1;->val$prefixName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_35

    goto :goto_37

    :cond_35
    move p0, v0

    goto :goto_38

    :cond_37
    :goto_37
    move p0, v1

    :goto_38
    if-eqz p1, :cond_3d

    if-eqz p0, :cond_3d

    move v0, v1

    :cond_3d
    return v0
.end method
