.class public final synthetic Lcom/android/launcher3/popup/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/popup/v;

.field public static final synthetic c:Lcom/android/launcher3/popup/v;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/popup/v;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/v;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/popup/v;->b:Lcom/android/launcher3/popup/v;

    new-instance v0, Lcom/android/launcher3/popup/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/v;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/popup/v;->c:Lcom/android/launcher3/popup/v;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget p0, p0, Lcom/android/launcher3/popup/v;->a:I

    packed-switch p0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    check-cast p1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$OnClosePopupContainerListener;

    invoke-interface {p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$OnClosePopupContainerListener;->onPopupContainerClosed()V

    return-void

    :goto_c
    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {p1}, Lcom/android/quickstep/fallback/FallbackRecentsView;->n0(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
