.class public final synthetic Lcom/android/wm/shell/splitscreen/g1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/transition/LegacyTransitions$ILegacyTransition;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final synthetic c:Landroid/view/RemoteAnimationAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/RemoteAnimationAdapter;I)V
    .registers 4

    iput p3, p0, Lcom/android/wm/shell/splitscreen/g1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/g1;->b:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/g1;->c:Landroid/view/RemoteAnimationAdapter;

    return-void
.end method


# virtual methods
.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/SurfaceControl$Transaction;)V
    .registers 19

    move-object v0, p0

    iget v1, v0, Lcom/android/wm/shell/splitscreen/g1;->a:I

    packed-switch v1, :pswitch_data_2a

    goto :goto_18

    :pswitch_7  #0x0
    iget-object v2, v0, Lcom/android/wm/shell/splitscreen/g1;->b:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v3, v0, Lcom/android/wm/shell/splitscreen/g1;->c:Landroid/view/RemoteAnimationAdapter;

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v2 .. v9}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->a(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/RemoteAnimationAdapter;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    :goto_18
    iget-object v4, v0, Lcom/android/wm/shell/splitscreen/g1;->b:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v5, v0, Lcom/android/wm/shell/splitscreen/g1;->c:Landroid/view/RemoteAnimationAdapter;

    move v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-static/range {v4 .. v11}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->r(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/RemoteAnimationAdapter;I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;Landroid/view/SurfaceControl$Transaction;)V

    return-void

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_7  #00000000
    .end packed-switch
.end method
