.class public final synthetic Lcom/android/launcher/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/FolderExtImplV2;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/v;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/v;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/v;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/v;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 6

    iget v0, p0, Lcom/android/launcher/v;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/launcher/v;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;->a(Lcom/android/launcher3/popup/pendingcard/PendingCardTransformer;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void

    :pswitch_e  #0x1
    iget-object p0, p0, Lcom/android/launcher/v;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/folder/FolderExtImplV2;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher3/folder/FolderExtImplV2;->a(Lcom/android/launcher3/folder/FolderExtImplV2;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void

    :pswitch_16  #0x0
    iget-object p0, p0, Lcom/android/launcher/v;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/Launcher;->c0(Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void

    :goto_1e
    iget-object p0, p0, Lcom/android/launcher/v;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;->b(Lcom/android/quickstep/touch/SwipeToRecentAnimationHelper;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_e  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
