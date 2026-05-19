.class public final synthetic Lcom/android/launcher3/pullup/anim/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;

.field public final synthetic b:[I


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;[I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/b;->a:Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;

    iput-object p2, p0, Lcom/android/launcher3/pullup/anim/b;->b:[I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/b;->a:Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;

    iget-object p0, p0, Lcom/android/launcher3/pullup/anim/b;->b:[I

    check-cast p1, Landroid/view/RemoteAnimationAdapter;

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;->a(Lcom/android/launcher3/pullup/anim/ActivityLaunchManager;[ILandroid/view/RemoteAnimationAdapter;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
