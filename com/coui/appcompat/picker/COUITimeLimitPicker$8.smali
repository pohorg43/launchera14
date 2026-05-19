.class Lcom/coui/appcompat/picker/COUITimeLimitPicker$8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/picker/COUINumberPicker$OnScrollingStopListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/picker/COUITimeLimitPicker;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/picker/COUITimeLimitPicker;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$8;->a:Lcom/coui/appcompat/picker/COUITimeLimitPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$8;->a:Lcom/coui/appcompat/picker/COUITimeLimitPicker;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    return-void
.end method
