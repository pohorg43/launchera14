.class public Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/lockview/COUINumericKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Cell"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:F

.field public e:I

.field public f:I

.field public final synthetic g:Lcom/coui/appcompat/lockview/COUINumericKeyboard;


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/lockview/COUINumericKeyboard;IILcom/coui/appcompat/lockview/COUINumericKeyboard$1;)V
    .registers 5

    iput-object p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->g:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p4, ""

    iput-object p4, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->c:Ljava/lang/String;

    const/high16 p4, 0x3f800000  # 1.0f

    iput p4, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->d:F

    sget p4, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->p0:I

    invoke-virtual {p1, p2, p3}, Lcom/coui/appcompat/lockview/COUINumericKeyboard;->c(II)V

    iput p2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->a:I

    iput p3, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    :cond_8
    iget v2, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->a:I

    iget v3, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->a:I

    if-ne v2, v3, :cond_15

    iget p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->b:I

    iget p1, p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->b:I

    if-ne p0, p1, :cond_15

    return v1

    :cond_15
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    :try_start_0
    check-cast p1, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->a(Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;)Z

    move-result p0
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const-string p0, "COUINumericKeyboard"

    const-string p1, "ClassCastException when equals"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public getColumn()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->b:I

    return p0
.end method

.method public getRow()I
    .registers 1

    iget p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->a:I

    return p0
.end method

.method public setCellNumberAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->d:F

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->g:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCellNumberTranslateX(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->e:I

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->g:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setCellNumberTranslateY(I)V
    .registers 2

    iput p1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->f:I

    iget-object p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->g:Lcom/coui/appcompat/lockview/COUINumericKeyboard;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "row "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/coui/appcompat/lockview/COUINumericKeyboard$Cell;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
