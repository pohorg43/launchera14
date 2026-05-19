.class public final synthetic Lcom/android/systemui/shared/system/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(ZI)V
    .registers 4

    iput p2, p0, Lcom/android/systemui/shared/system/b;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/shared/system/b;->b:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/systemui/shared/system/b;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x0
    iget-boolean p0, p0, Lcom/android/systemui/shared/system/b;->b:Z

    check-cast p1, Landroid/window/TransitionInfo$Change;

    invoke-static {p0, p1}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->a(ZLandroid/window/TransitionInfo$Change;)Z

    move-result p0

    return p0

    :goto_f
    iget-boolean p0, p0, Lcom/android/systemui/shared/system/b;->b:Z

    check-cast p1, Landroid/window/TransitionInfo$Change;

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->a(ZLandroid/window/TransitionInfo$Change;)Z

    move-result p0

    return p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
