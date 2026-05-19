.class public Lcom/coui/appcompat/stepper/ObservableStep;
.super Ljava/util/Observable;
.source ""


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    const/16 v0, 0x270f

    iput v0, p0, Lcom/coui/appcompat/stepper/ObservableStep;->b:I

    const/16 v0, -0x3e7

    iput v0, p0, Lcom/coui/appcompat/stepper/ObservableStep;->c:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget v0, p0, Lcom/coui/appcompat/stepper/ObservableStep;->c:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/stepper/ObservableStep;->b:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lcom/coui/appcompat/stepper/ObservableStep;->a:I

    iput p1, p0, Lcom/coui/appcompat/stepper/ObservableStep;->a:I

    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method
