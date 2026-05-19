.class Lcom/coui/appcompat/picker/COUITimeLimitPicker$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/picker/COUITimeLimitPicker;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/picker/COUITimeLimitPicker;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$7;->a:Lcom/coui/appcompat/picker/COUITimeLimitPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/coui/appcompat/picker/COUINumberPicker;II)V
    .registers 4

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestFocus()Z

    iget-object p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$7;->a:Lcom/coui/appcompat/picker/COUITimeLimitPicker;

    iget-boolean p2, p1, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->j:Z

    xor-int/lit8 p2, p2, 0x1

    iput-boolean p2, p1, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->j:Z

    invoke-virtual {p1}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->b()V

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$7;->a:Lcom/coui/appcompat/picker/COUITimeLimitPicker;

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->a()V

    return-void
.end method
