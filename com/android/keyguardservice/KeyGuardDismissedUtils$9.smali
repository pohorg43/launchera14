.class Lcom/android/keyguardservice/KeyGuardDismissedUtils$9;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguardservice/KeyGuardDismissedUtils;->buildRenderNodeAnimForLayer(Ljava/util/List;Ljava/util/ArrayList;JJD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$views:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils$9;->val$views:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    iget-object p1, p0, Lcom/android/keyguardservice/KeyGuardDismissedUtils$9;->val$views:Ljava/util/ArrayList;

    iget-boolean p0, p0, Lcom/android/launcher3/anim/AnimationSuccessListener;->mCancelled:Z

    invoke-static {p1, p0}, Lcom/android/keyguardservice/KeyGuardDismissedUtils;->access$200(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
