.class public Lcom/oplus/log/uploader/UploadManager$UploadCheckBody;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/log/uploader/UploadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadCheckBody"
.end annotation


# instance fields
.field public business:Ljava/lang/String;

.field public subType:Ljava/lang/String;

.field public final synthetic this$0:Lcom/oplus/log/uploader/UploadManager;

.field public uploadCheckerListener:Lcom/oplus/log/uploader/UploadManager$UploadCheckerListener;


# direct methods
.method public constructor <init>(Lcom/oplus/log/uploader/UploadManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/log/uploader/UploadManager$UploadCheckBody;->this$0:Lcom/oplus/log/uploader/UploadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oplus/log/uploader/UploadManager$UploadCheckBody;->business:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/log/uploader/UploadManager$UploadCheckBody;->subType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setUploadCheckerListener(Lcom/oplus/log/uploader/UploadManager$UploadCheckerListener;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/uploader/UploadManager$UploadCheckBody;->uploadCheckerListener:Lcom/oplus/log/uploader/UploadManager$UploadCheckerListener;

    return-void
.end method
