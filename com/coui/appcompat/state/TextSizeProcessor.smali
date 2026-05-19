.class public Lcom/coui/appcompat/state/TextSizeProcessor;
.super Lcom/coui/appcompat/state/Processor;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/state/TextSizeProcessor$Builder;,
        Lcom/coui/appcompat/state/TextSizeProcessor$TypedValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coui/appcompat/state/Processor<",
        "Ljava/lang/Float;",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# virtual methods
.method public a(Landroid/view/View;ILandroid/util/SparseArray;)V
    .registers 6

    check-cast p1, Landroid/widget/TextView;

    const/4 p0, 0x2

    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_23

    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1c

    move p0, v0

    goto :goto_23

    :cond_1c
    const/high16 v1, 0x40000000  # 2.0f

    cmpl-float p2, p2, v1

    if-nez p2, :cond_23

    const/4 p0, 0x0

    :cond_23
    :goto_23
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_36

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_36
    return-void
.end method
