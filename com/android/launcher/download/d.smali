.class public final synthetic Lcom/android/launcher/download/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/download/DownloadAppsManager;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/download/DownloadAppsManager;Ljava/util/List;Ljava/lang/String;I)V
    .registers 5

    iput p4, p0, Lcom/android/launcher/download/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/download/d;->b:Lcom/android/launcher/download/DownloadAppsManager;

    iput-object p2, p0, Lcom/android/launcher/download/d;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/android/launcher/download/d;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/launcher/download/d;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher/download/d;->b:Lcom/android/launcher/download/DownloadAppsManager;

    iget-object v1, p0, Lcom/android/launcher/download/d;->c:Ljava/util/List;

    iget-object p0, p0, Lcom/android/launcher/download/d;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/launcher/download/DownloadAppsManager;->c(Lcom/android/launcher/download/DownloadAppsManager;Ljava/util/List;Ljava/lang/String;)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/launcher/download/d;->b:Lcom/android/launcher/download/DownloadAppsManager;

    iget-object v1, p0, Lcom/android/launcher/download/d;->c:Ljava/util/List;

    iget-object p0, p0, Lcom/android/launcher/download/d;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/launcher/download/DownloadAppsManager;->e(Lcom/android/launcher/download/DownloadAppsManager;Ljava/util/List;Ljava/lang/String;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
