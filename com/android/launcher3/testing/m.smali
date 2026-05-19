.class public final synthetic Lcom/android/launcher3/testing/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/testing/TestInformationHandler;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/testing/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/testing/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/testing/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/testing/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/testing/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/testing/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/interaction/AllSetActivity;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/testing/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/testing/m;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/testing/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/testing/m;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/launcher3/testing/m;->a:I

    packed-switch v0, :pswitch_data_3c

    goto :goto_32

    :pswitch_6  #0x3
    iget-object p0, p0, Lcom/android/launcher3/testing/m;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/interaction/AllSetActivity;

    check-cast p1, Lcom/android/quickstep/GestureState;

    invoke-static {p0, p1}, Lcom/android/quickstep/interaction/AllSetActivity;->b(Lcom/android/quickstep/interaction/AllSetActivity;Lcom/android/quickstep/GestureState;)Lcom/android/quickstep/AnimatedFloat;

    move-result-object p0

    return-object p0

    :pswitch_11  #0x2
    iget-object p0, p0, Lcom/android/launcher3/testing/m;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;

    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-static {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter;->d(Lcom/android/launcher3/widget/picker/WidgetsListAdapter;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    move-result-object p0

    return-object p0

    :pswitch_1c  #0x1
    iget-object p0, p0, Lcom/android/launcher3/testing/m;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    check-cast p1, Lcom/android/launcher3/icons/BitmapInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->d(Lcom/android/launcher3/uioverrides/PredictedAppIcon;Lcom/android/launcher3/icons/BitmapInfo;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    return-object p0

    :pswitch_27  #0x0
    iget-object p0, p0, Lcom/android/launcher3/testing/m;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/testing/TestInformationHandler;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestInformationHandler;->h(Lcom/android/launcher3/testing/TestInformationHandler;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_32
    iget-object p0, p0, Lcom/android/launcher3/testing/m;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->S0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_27  #00000000
        :pswitch_1c  #00000001
        :pswitch_11  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
