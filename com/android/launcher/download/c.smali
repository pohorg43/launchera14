.class public final synthetic Lcom/android/launcher/download/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher/download/DownloadAppsManager;

.field public final synthetic c:Lcom/android/launcher/download/OplusPackageInstallInfo;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/download/DownloadAppsManager;Lcom/android/launcher/download/OplusPackageInstallInfo;Ljava/lang/String;I)V
    .registers 6

    iput p4, p0, Lcom/android/launcher/download/c;->a:I

    const/4 v0, 0x1

    if-eq p4, v0, :cond_9

    const/4 v0, 0x2

    if-eq p4, v0, :cond_9

    const/4 v0, 0x3

    :cond_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/download/c;->b:Lcom/android/launcher/download/DownloadAppsManager;

    iput-object p2, p0, Lcom/android/launcher/download/c;->c:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iput-object p3, p0, Lcom/android/launcher/download/c;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/launcher/download/c;->a:I

    packed-switch v0, :pswitch_data_38

    goto :goto_2e

    :pswitch_6  #0x3
    iget-object v0, p0, Lcom/android/launcher/download/c;->b:Lcom/android/launcher/download/DownloadAppsManager;

    iget-object v1, p0, Lcom/android/launcher/download/c;->c:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object p0, p0, Lcom/android/launcher/download/c;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/launcher/download/DownloadAppsManager;->i(Lcom/android/launcher/download/DownloadAppsManager;Lcom/android/launcher/download/OplusPackageInstallInfo;Ljava/lang/String;)V

    return-void

    :pswitch_10  #0x2
    iget-object v0, p0, Lcom/android/launcher/download/c;->b:Lcom/android/launcher/download/DownloadAppsManager;

    iget-object v1, p0, Lcom/android/launcher/download/c;->c:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object p0, p0, Lcom/android/launcher/download/c;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/launcher/download/DownloadAppsManager;->f(Lcom/android/launcher/download/DownloadAppsManager;Lcom/android/launcher/download/OplusPackageInstallInfo;Ljava/lang/String;)V

    return-void

    :pswitch_1a  #0x1
    iget-object v0, p0, Lcom/android/launcher/download/c;->b:Lcom/android/launcher/download/DownloadAppsManager;

    iget-object v1, p0, Lcom/android/launcher/download/c;->c:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object p0, p0, Lcom/android/launcher/download/c;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/launcher/download/DownloadAppsManager;->k(Lcom/android/launcher/download/DownloadAppsManager;Lcom/android/launcher/download/OplusPackageInstallInfo;Ljava/lang/String;)V

    return-void

    :pswitch_24  #0x0
    iget-object v0, p0, Lcom/android/launcher/download/c;->b:Lcom/android/launcher/download/DownloadAppsManager;

    iget-object v1, p0, Lcom/android/launcher/download/c;->c:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object p0, p0, Lcom/android/launcher/download/c;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/launcher/download/DownloadAppsManager;->g(Lcom/android/launcher/download/DownloadAppsManager;Lcom/android/launcher/download/OplusPackageInstallInfo;Ljava/lang/String;)V

    return-void

    :goto_2e
    iget-object v0, p0, Lcom/android/launcher/download/c;->b:Lcom/android/launcher/download/DownloadAppsManager;

    iget-object v1, p0, Lcom/android/launcher/download/c;->c:Lcom/android/launcher/download/OplusPackageInstallInfo;

    iget-object p0, p0, Lcom/android/launcher/download/c;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/launcher/download/DownloadAppsManager;->b(Lcom/android/launcher/download/DownloadAppsManager;Lcom/android/launcher/download/OplusPackageInstallInfo;Ljava/lang/String;)V

    return-void

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_24  #00000000
        :pswitch_1a  #00000001
        :pswitch_10  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
