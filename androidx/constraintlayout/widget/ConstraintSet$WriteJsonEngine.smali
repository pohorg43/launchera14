.class Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WriteJsonEngine"
.end annotation


# static fields
.field private static final SPACE:Ljava/lang/String; = "       "


# instance fields
.field public final BASELINE:Ljava/lang/String;

.field public final BOTTOM:Ljava/lang/String;

.field public final END:Ljava/lang/String;

.field public final LEFT:Ljava/lang/String;

.field public final RIGHT:Ljava/lang/String;

.field public final START:Ljava/lang/String;

.field public final TOP:Ljava/lang/String;

.field public context:Landroid/content/Context;

.field public flags:I

.field public idMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public layout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final synthetic this$0:Landroidx/constraintlayout/widget/ConstraintSet;

.field public unknownCount:I

.field public writer:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintSet;Ljava/io/Writer;Landroidx/constraintlayout/widget/ConstraintLayout;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->this$0:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->unknownCount:I

    const-string p1, "\'left\'"

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->LEFT:Ljava/lang/String;

    const-string p1, "\'right\'"

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->RIGHT:Ljava/lang/String;

    const-string p1, "\'baseline\'"

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->BASELINE:Ljava/lang/String;

    const-string p1, "\'bottom\'"

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->BOTTOM:Ljava/lang/String;

    const-string p1, "\'top\'"

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->TOP:Ljava/lang/String;

    const-string p1, "\'start\'"

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->START:Ljava/lang/String;

    const-string p1, "\'end\'"

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->END:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->idMap:Ljava/util/HashMap;

    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    iput-object p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->context:Landroid/content/Context;

    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->flags:I

    return-void
.end method

.method private writeDimension(Ljava/lang/String;IIFIIZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p7, -0x1

    const-string v0, "       "

    if-nez p2, :cond_b4

    const/4 p2, 0x2

    const/4 v1, 0x1

    if-ne p6, p7, :cond_4e

    if-eq p5, p7, :cond_c

    goto :goto_4e

    :cond_c
    if-eq p3, v1, :cond_34

    if-eq p3, p2, :cond_12

    goto/16 :goto_10e

    :cond_12
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": \'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "%\',\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_34
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": \'???????????\',\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_4e
    :goto_4e
    const-string/jumbo p7, "}\n"

    const-string v2, ", "

    if-eqz p3, :cond_9e

    if-eq p3, v1, :cond_88

    if-eq p3, p2, :cond_5a

    goto :goto_b3

    :cond_5a
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": {\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "\'% ,"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_88
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string p2, ": {\'wrap\' ,"

    invoke-static {v0, p1, p2, p5, v2}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_9e
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string p2, ": {\'spread\' ,"

    invoke-static {v0, p1, p2, p5, v2}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_b3
    return-void

    :cond_b4
    const/4 p3, -0x2

    if-ne p2, p3, :cond_d1

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": \'wrap\'\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_10e

    :cond_d1
    if-ne p2, p7, :cond_ed

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": \'parent\'\n"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_10e

    :cond_ed
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",\n"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_10e
    return-void
.end method

.method private writeGuideline(IIIF)V
    .registers 5

    return-void
.end method


# virtual methods
.method public getName(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->idMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\'"

    if-eqz v0, :cond_23

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->idMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    if-nez p1, :cond_28

    const-string p0, "\'parent\'"

    return-object p0

    :cond_28
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->lookup(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->idMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public lookup(I)Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    const-string/jumbo v1, "unknown"

    if-eq p1, v0, :cond_11

    :try_start_6
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->unknownCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->unknownCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->unknownCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->unknownCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeCircle(IFI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string v1, "       circle"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string v1, ":["

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->getName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p5, -0x1

    if-ne p2, p5, :cond_4

    return-void

    :cond_4
    iget-object p5, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "       "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string p5, ":["

    invoke-virtual {p1, p5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->getName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string p2, " , "

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    invoke-virtual {p1, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p4, :cond_4c

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_4c
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string p1, "],\n"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeLayout()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string v1, "\n\'ConstraintSet\':{\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->this$0:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-static {v0}, Landroidx/constraintlayout/widget/ConstraintSet;->access$1300(Landroidx/constraintlayout/widget/ConstraintSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_15
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string/jumbo v9, "}\n"

    if-eqz v0, :cond_1b4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->this$0:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-static {v1}, Landroidx/constraintlayout/widget/ConstraintSet;->access$1300(Landroidx/constraintlayout/widget/ConstraintSet;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->getName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":{\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v10, v1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget v2, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHeight:I

    iget v3, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightDefault:I

    iget v4, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightPercent:F

    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMin:I

    iget v6, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->heightMax:I

    iget-boolean v7, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedHeight:Z

    const-string v1, "height"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeDimension(Ljava/lang/String;IIFIIZ)V

    iget v2, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    iget v3, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthDefault:I

    iget v4, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthPercent:F

    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMin:I

    iget v6, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->widthMax:I

    iget-boolean v7, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->constrainedWidth:Z

    const-string/jumbo v1, "width"

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeDimension(Ljava/lang/String;IIFIIZ)V

    iget v2, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToLeft:I

    iget v4, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    const-string v1, "\'left\'"

    const-string v3, "\'left\'"

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    iget v2, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftToRight:I

    iget v4, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->leftMargin:I

    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneLeftMargin:I

    const-string v1, "\'left\'"

    const-string v3, "\'right\'"

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    iget v2, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToLeft:I

    iget v4, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    const-string v1, "\'right\'"

    const-string v3, "\'left\'"

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    iget v2, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightToRight:I

    iget v4, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->rightMargin:I

    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneRightMargin:I

    const-string v1, "\'right\'"

    const-string v3, "\'right\'"

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    iget v2, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBaseline:I

    const/4 v4, -0x1

    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    const-string v1, "\'baseline\'"

    const-string v3, "\'baseline\'"

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    iget v2, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToTop:I

    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    const-string v1, "\'baseline\'"

    const-string v3, "\'top\'"

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    iget v2, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->baselineToBottom:I

    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBaselineMargin:I

    const-string v1, "\'baseline\'"

    const-string v3, "\'bottom\'"

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    iget v2, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToBottom:I

    iget v4, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    const-string v1, "\'top\'"

    const-string v3, "\'bottom\'"

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    iget v2, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topToTop:I

    iget v4, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->topMargin:I

    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneTopMargin:I

    const-string v1, "\'top\'"

    const-string v3, "\'top\'"

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    iget v2, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToBottom:I

    iget v4, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    const-string v1, "\'bottom\'"

    const-string v3, "\'bottom\'"

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    iget v2, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomToTop:I

    iget v4, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->bottomMargin:I

    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneBottomMargin:I

    const-string v1, "\'bottom\'"

    const-string v3, "\'top\'"

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    iget v2, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToStart:I

    iget v4, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    const-string v1, "\'start\'"

    const-string v3, "\'start\'"

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    iget v2, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startToEnd:I

    iget v4, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->startMargin:I

    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneStartMargin:I

    const-string v1, "\'start\'"

    const-string v3, "\'end\'"

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    iget v2, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToStart:I

    iget v4, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    const-string v1, "\'end\'"

    const-string v3, "\'start\'"

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    iget v2, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endToEnd:I

    iget v4, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->endMargin:I

    iget v5, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->goneEndMargin:I

    const-string v1, "\'end\'"

    const-string v3, "\'end\'"

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeConstraint(Ljava/lang/String;ILjava/lang/String;II)V

    iget v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalBias:F

    const-string v1, "\'horizontalBias\'"

    const/high16 v2, 0x3f000000  # 0.5f

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;FF)V

    iget v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalBias:F

    const-string v1, "\'verticalBias\'"

    invoke-virtual {p0, v1, v0, v2}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;FF)V

    iget v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleConstraint:I

    iget v1, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleAngle:F

    iget v2, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->circleRadius:I

    invoke-virtual {p0, v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeCircle(IFI)V

    iget v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->orientation:I

    iget v1, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideBegin:I

    iget v2, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guideEnd:I

    iget v3, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->guidePercent:F

    invoke-direct {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeGuideline(IIIF)V

    iget-object v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->dimensionRatio:Ljava/lang/String;

    const-string v1, "\'dimensionRatio\'"

    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    const-string v1, "\'barrierMargin\'"

    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;I)V

    iget v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mHelperType:I

    const-string v1, "\'type\'"

    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;I)V

    iget-object v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIdString:Ljava/lang/String;

    const-string v1, "\'ReferenceId\'"

    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    const/4 v1, 0x1

    const-string v2, "\'mBarrierAllowsGoneWidgets\'"

    invoke-virtual {p0, v2, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;ZZ)V

    iget v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWrapBehavior:I

    const-string v1, "\'WrapBehavior\'"

    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;I)V

    iget v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalWeight:F

    const-string v1, "\'verticalWeight\'"

    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;F)V

    iget v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalWeight:F

    const-string v1, "\'horizontalWeight\'"

    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;F)V

    iget v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->horizontalChainStyle:I

    const-string v1, "\'horizontalChainStyle\'"

    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;I)V

    iget v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->verticalChainStyle:I

    const-string v1, "\'verticalChainStyle\'"

    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;I)V

    iget v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    const-string v1, "\'barrierDirection\'"

    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;I)V

    iget-object v0, v10, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mReferenceIds:[I

    if-eqz v0, :cond_1ad

    const-string v1, "\'ReferenceIds\'"

    invoke-virtual {p0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writeVariable(Ljava/lang/String;[I)V

    :cond_1ad
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    invoke-virtual {v0, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_1b4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    invoke-virtual {v0, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeVariable(Ljava/lang/String;F)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, -0x40800000  # -1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string p1, ",\n"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeVariable(Ljava/lang/String;FF)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    cmpl-float p3, p2, p3

    if-nez p3, :cond_5

    return-void

    :cond_5
    iget-object p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "       "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string p1, ",\n"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeVariable(Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_40

    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    goto :goto_40

    :cond_6
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_40
    :goto_40
    return-void
.end method

.method public writeVariable(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeVariable(Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string p1, ",\n"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeVariable(Ljava/lang/String;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ne p2, p3, :cond_3

    return-void

    :cond_3
    iget-object p3, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "       "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string p1, ",\n"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method

.method public writeVariable(Ljava/lang/String;[I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "       "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_21
    array-length v0, p2

    if-ge p1, v0, :cond_48

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_30

    const-string v2, "["

    goto :goto_32

    :cond_30
    const-string v2, ", "

    :goto_32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p2, p1

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_21

    :cond_48
    iget-object p0, p0, Landroidx/constraintlayout/widget/ConstraintSet$WriteJsonEngine;->writer:Ljava/io/Writer;

    const-string p1, "],\n"

    invoke-virtual {p0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void
.end method
