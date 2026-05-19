.class public final synthetic Lcom/android/launcher3/d3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;

.field public final synthetic c:I

.field public final synthetic d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic e:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic f:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic g:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;I)V
    .registers 8

    iput p7, p0, Lcom/android/launcher3/d3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/d3;->b:Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;

    iput p2, p0, Lcom/android/launcher3/d3;->c:I

    iput-object p3, p0, Lcom/android/launcher3/d3;->d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p4, p0, Lcom/android/launcher3/d3;->e:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p5, p0, Lcom/android/launcher3/d3;->f:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p6, p0, Lcom/android/launcher3/d3;->g:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    iget v0, p0, Lcom/android/launcher3/d3;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_16

    :pswitch_6  #0x0
    iget-object v1, p0, Lcom/android/launcher3/d3;->b:Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;

    iget v2, p0, Lcom/android/launcher3/d3;->c:I

    iget-object v3, p0, Lcom/android/launcher3/d3;->d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v4, p0, Lcom/android/launcher3/d3;->e:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v5, p0, Lcom/android/launcher3/d3;->f:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v6, p0, Lcom/android/launcher3/d3;->g:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    invoke-static/range {v1 .. v6}, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->a(Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void

    :goto_16
    iget-object v7, p0, Lcom/android/launcher3/d3;->b:Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;

    iget v8, p0, Lcom/android/launcher3/d3;->c:I

    iget-object v9, p0, Lcom/android/launcher3/d3;->d:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v10, p0, Lcom/android/launcher3/d3;->e:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v11, p0, Lcom/android/launcher3/d3;->f:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v12, p0, Lcom/android/launcher3/d3;->g:Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    invoke-static/range {v7 .. v12}, Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;->b(Lcom/android/launcher3/QuickstepTransitionManager$WallpaperOpenLauncherAnimationRunner;I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
