.class Lcom/coui/appcompat/picker/COUITimeLimitPicker$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/coui/appcompat/picker/COUINumberPicker$OnValueChangeListener;


# instance fields
.field public final synthetic a:Lcom/coui/appcompat/picker/COUITimeLimitPicker;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/picker/COUITimeLimitPicker;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$2;->a:Lcom/coui/appcompat/picker/COUITimeLimitPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/coui/appcompat/picker/COUINumberPicker;II)V
    .registers 4

    iget-object p0, p0, Lcom/coui/appcompat/picker/COUITimeLimitPicker$2;->a:Lcom/coui/appcompat/picker/COUITimeLimitPicker;

    sget-object p1, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->v:Lcom/coui/appcompat/picker/COUITimeLimitPicker$OnTimeChangedListener;

    invoke-virtual {p0}, Lcom/coui/appcompat/picker/COUITimeLimitPicker;->a()V

    return-void
.end method
