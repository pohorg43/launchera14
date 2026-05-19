.class public final synthetic Lcom/android/wm/shell/splitscreen/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Landroid/os/Bundle;

.field public final synthetic e:Landroid/os/UserHandle;

.field public final synthetic f:Lcom/android/internal/logging/InstanceId;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/internal/logging/InstanceId;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/r;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/r;->b:Ljava/lang/String;

    iput p3, p0, Lcom/android/wm/shell/splitscreen/r;->c:I

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/r;->d:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/r;->e:Landroid/os/UserHandle;

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/r;->f:Lcom/android/internal/logging/InstanceId;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/r;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/r;->b:Ljava/lang/String;

    iget v2, p0, Lcom/android/wm/shell/splitscreen/r;->c:I

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/r;->d:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/android/wm/shell/splitscreen/r;->e:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/wm/shell/splitscreen/r;->f:Lcom/android/internal/logging/InstanceId;

    move-object v6, p1

    check-cast v6, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static/range {v0 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->f(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Landroid/os/UserHandle;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void
.end method
