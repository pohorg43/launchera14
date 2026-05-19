.class public final synthetic Lcom/android/exceptionmonitor/util/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/launcher/Launcher;

.field public final synthetic b:Landroid/content/ComponentName;

.field public final synthetic c:Landroid/os/UserHandle;

.field public final synthetic d:Ljava/lang/Boolean;

.field public final synthetic e:Z

.field public final synthetic f:Z

.field public final synthetic g:Z

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/Boolean;ZZZZ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/exceptionmonitor/util/g;->a:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/exceptionmonitor/util/g;->b:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/exceptionmonitor/util/g;->c:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/exceptionmonitor/util/g;->d:Ljava/lang/Boolean;

    iput-boolean p5, p0, Lcom/android/exceptionmonitor/util/g;->e:Z

    iput-boolean p6, p0, Lcom/android/exceptionmonitor/util/g;->f:Z

    iput-boolean p7, p0, Lcom/android/exceptionmonitor/util/g;->g:Z

    iput-boolean p8, p0, Lcom/android/exceptionmonitor/util/g;->h:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    iget-object v0, p0, Lcom/android/exceptionmonitor/util/g;->a:Lcom/android/launcher/Launcher;

    iget-object v1, p0, Lcom/android/exceptionmonitor/util/g;->b:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/exceptionmonitor/util/g;->c:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/exceptionmonitor/util/g;->d:Ljava/lang/Boolean;

    iget-boolean v4, p0, Lcom/android/exceptionmonitor/util/g;->e:Z

    iget-boolean v5, p0, Lcom/android/exceptionmonitor/util/g;->f:Z

    iget-boolean v6, p0, Lcom/android/exceptionmonitor/util/g;->g:Z

    iget-boolean v7, p0, Lcom/android/exceptionmonitor/util/g;->h:Z

    invoke-static/range {v0 .. v7}, Lcom/android/exceptionmonitor/util/ViewLostCheckUtils;->b(Lcom/android/launcher/Launcher;Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/Boolean;ZZZZ)V

    return-void
.end method
