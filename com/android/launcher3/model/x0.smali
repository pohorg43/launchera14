.class public final synthetic Lcom/android/launcher3/model/x0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/model/x0;

.field public static final synthetic c:Lcom/android/launcher3/model/x0;

.field public static final synthetic d:Lcom/android/launcher3/model/x0;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/model/x0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/x0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/x0;->b:Lcom/android/launcher3/model/x0;

    new-instance v0, Lcom/android/launcher3/model/x0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/x0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/x0;->c:Lcom/android/launcher3/model/x0;

    new-instance v0, Lcom/android/launcher3/model/x0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/x0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/x0;->d:Lcom/android/launcher3/model/x0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/model/x0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/model/x0;->a:I

    packed-switch p0, :pswitch_data_1c

    goto :goto_14

    :pswitch_6  #0x1
    check-cast p1, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$OnClosePopupContainerListener;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_d  #0x0
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Ljava/util/Objects;->isNull(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :goto_14
    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-static {p1}, Lcom/android/launcher3/widget/picker/search/SimpleWidgetsSearchAlgorithm;->b(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_d  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
