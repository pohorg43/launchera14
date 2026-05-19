.class public final synthetic Lcom/android/wm/shell/splitscreen/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/PendingIntent;

.field public final synthetic c:I

.field public final synthetic d:Landroid/os/Bundle;

.field public final synthetic e:I

.field public final synthetic f:Landroid/os/Bundle;

.field public final synthetic g:I

.field public final synthetic h:F

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lcom/android/internal/logging/InstanceId;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;)V
    .registers 11

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/v;->b:Landroid/app/PendingIntent;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/v;->c:I

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/v;->d:Landroid/os/Bundle;

    iput p4, p0, Lcom/android/wm/shell/splitscreen/v;->e:I

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/v;->f:Landroid/os/Bundle;

    iput p6, p0, Lcom/android/wm/shell/splitscreen/v;->g:I

    iput p7, p0, Lcom/android/wm/shell/splitscreen/v;->h:F

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/v;->i:Ljava/lang/Object;

    iput-object p9, p0, Lcom/android/wm/shell/splitscreen/v;->j:Lcom/android/internal/logging/InstanceId;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;)V
    .registers 11

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/v;->b:Landroid/app/PendingIntent;

    iput p2, p0, Lcom/android/wm/shell/splitscreen/v;->c:I

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/v;->d:Landroid/os/Bundle;

    iput p4, p0, Lcom/android/wm/shell/splitscreen/v;->e:I

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/v;->f:Landroid/os/Bundle;

    iput p6, p0, Lcom/android/wm/shell/splitscreen/v;->g:I

    iput p7, p0, Lcom/android/wm/shell/splitscreen/v;->h:F

    iput-object p8, p0, Lcom/android/wm/shell/splitscreen/v;->i:Ljava/lang/Object;

    iput-object p9, p0, Lcom/android/wm/shell/splitscreen/v;->j:Lcom/android/internal/logging/InstanceId;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 24

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/wm/shell/splitscreen/v;->a:I

    packed-switch v1, :pswitch_data_4c

    goto :goto_25

    :pswitch_8  #0x0
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/v;->b:Landroid/app/PendingIntent;

    iget v3, v0, Lcom/android/wm/shell/splitscreen/v;->c:I

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/v;->d:Landroid/os/Bundle;

    iget v5, v0, Lcom/android/wm/shell/splitscreen/v;->e:I

    iget-object v6, v0, Lcom/android/wm/shell/splitscreen/v;->f:Landroid/os/Bundle;

    iget v7, v0, Lcom/android/wm/shell/splitscreen/v;->g:I

    iget v8, v0, Lcom/android/wm/shell/splitscreen/v;->h:F

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/v;->i:Ljava/lang/Object;

    move-object v9, v1

    check-cast v9, Landroid/view/RemoteAnimationAdapter;

    iget-object v10, v0, Lcom/android/wm/shell/splitscreen/v;->j:Lcom/android/internal/logging/InstanceId;

    move-object/from16 v11, p1

    check-cast v11, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static/range {v2 .. v11}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->n(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/view/RemoteAnimationAdapter;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void

    :goto_25
    iget-object v12, v0, Lcom/android/wm/shell/splitscreen/v;->b:Landroid/app/PendingIntent;

    iget v13, v0, Lcom/android/wm/shell/splitscreen/v;->c:I

    iget-object v14, v0, Lcom/android/wm/shell/splitscreen/v;->d:Landroid/os/Bundle;

    iget v15, v0, Lcom/android/wm/shell/splitscreen/v;->e:I

    iget-object v1, v0, Lcom/android/wm/shell/splitscreen/v;->f:Landroid/os/Bundle;

    iget v2, v0, Lcom/android/wm/shell/splitscreen/v;->g:I

    iget v3, v0, Lcom/android/wm/shell/splitscreen/v;->h:F

    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/v;->i:Ljava/lang/Object;

    move-object/from16 v19, v4

    check-cast v19, Landroid/window/RemoteTransition;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/v;->j:Lcom/android/internal/logging/InstanceId;

    move-object/from16 v21, p1

    check-cast v21, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move-object/from16 v20, v0

    invoke-static/range {v12 .. v21}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->m(Landroid/app/PendingIntent;ILandroid/os/Bundle;ILandroid/os/Bundle;IFLandroid/window/RemoteTransition;Lcom/android/internal/logging/InstanceId;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_8  #00000000
    .end packed-switch
.end method
