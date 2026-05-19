.class public Lcom/oplus/log/uploader/UploadManager$UploadCheckForCdnBody;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/log/uploader/UploadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadCheckForCdnBody"
.end annotation


# instance fields
.field public business:Ljava/lang/String;

.field public final synthetic this$0:Lcom/oplus/log/uploader/UploadManager;

.field public uploadCheckerForCdnListener:Lcom/oplus/log/uploader/UploadManager$UploadCheckerForCdnListener;


# direct methods
.method public constructor <init>(Lcom/oplus/log/uploader/UploadManager;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/log/uploader/UploadManager$UploadCheckForCdnBody;->this$0:Lcom/oplus/log/uploader/UploadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oplus/log/uploader/UploadManager$UploadCheckForCdnBody;->business:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setUploadCheckerForCdnListener(Lcom/oplus/log/uploader/UploadManager$UploadCheckerForCdnListener;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/uploader/UploadManager$UploadCheckForCdnBody;->uploadCheckerForCdnListener:Lcom/oplus/log/uploader/UploadManager$UploadCheckerForCdnListener;

    return-void
.end method
