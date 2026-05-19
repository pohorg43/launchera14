.class public final synthetic Lcom/android/launcher/touch/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

.field public final synthetic b:Lcom/android/launcher/Launcher;

.field public final synthetic c:Landroid/app/SearchManager;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z

.field public final synthetic f:Landroid/os/Bundle;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/touch/WorkspacePullDownDetectController;Lcom/android/launcher/Launcher;Landroid/app/SearchManager;Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/touch/e;->a:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    iput-object p2, p0, Lcom/android/launcher/touch/e;->b:Lcom/android/launcher/Launcher;

    iput-object p3, p0, Lcom/android/launcher/touch/e;->c:Landroid/app/SearchManager;

    iput-object p4, p0, Lcom/android/launcher/touch/e;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/launcher/touch/e;->e:Z

    iput-object p6, p0, Lcom/android/launcher/touch/e;->f:Landroid/os/Bundle;

    iput-boolean p7, p0, Lcom/android/launcher/touch/e;->g:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget-object v0, p0, Lcom/android/launcher/touch/e;->a:Lcom/android/launcher/touch/WorkspacePullDownDetectController;

    iget-object v1, p0, Lcom/android/launcher/touch/e;->b:Lcom/android/launcher/Launcher;

    iget-object v2, p0, Lcom/android/launcher/touch/e;->c:Landroid/app/SearchManager;

    iget-object v3, p0, Lcom/android/launcher/touch/e;->d:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/launcher/touch/e;->e:Z

    iget-object v5, p0, Lcom/android/launcher/touch/e;->f:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/android/launcher/touch/e;->g:Z

    invoke-static/range {v0 .. v6}, Lcom/android/launcher/touch/WorkspacePullDownDetectController;->a(Lcom/android/launcher/touch/WorkspacePullDownDetectController;Lcom/android/launcher/Launcher;Landroid/app/SearchManager;Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    return-void
.end method
