.class public final synthetic Lcom/android/launcher3/u1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;

.field public final synthetic c:I

.field public final synthetic d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic e:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic f:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic g:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;II)V
    .registers 9

    iput p8, p0, Lcom/android/launcher3/u1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/u1;->b:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;

    iput p2, p0, Lcom/android/launcher3/u1;->c:I

    iput-object p3, p0, Lcom/android/launcher3/u1;->d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p4, p0, Lcom/android/launcher3/u1;->e:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p5, p0, Lcom/android/launcher3/u1;->f:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p6, p0, Lcom/android/launcher3/u1;->g:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    iput p7, p0, Lcom/android/launcher3/u1;->h:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 16

    iget v0, p0, Lcom/android/launcher3/u1;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_18

    :pswitch_6  #0x0
    iget-object v1, p0, Lcom/android/launcher3/u1;->b:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;

    iget v2, p0, Lcom/android/launcher3/u1;->c:I

    iget-object v3, p0, Lcom/android/launcher3/u1;->d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v4, p0, Lcom/android/launcher3/u1;->e:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v5, p0, Lcom/android/launcher3/u1;->f:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v6, p0, Lcom/android/launcher3/u1;->g:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    iget v7, p0, Lcom/android/launcher3/u1;->h:I

    invoke-static/range {v1 .. v7}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->c(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;I)V

    return-void

    :goto_18
    iget-object v8, p0, Lcom/android/launcher3/u1;->b:Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;

    iget v9, p0, Lcom/android/launcher3/u1;->c:I

    iget-object v10, p0, Lcom/android/launcher3/u1;->d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v11, p0, Lcom/android/launcher3/u1;->e:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v12, p0, Lcom/android/launcher3/u1;->f:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v13, p0, Lcom/android/launcher3/u1;->g:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    iget v14, p0, Lcom/android/launcher3/u1;->h:I

    invoke-static/range {v8 .. v14}, Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;->d(Lcom/android/launcher3/OplusQuickstepTransitionManagerImpl$OplusWallpaperOpenLauncherAnimationRunner;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;I)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
