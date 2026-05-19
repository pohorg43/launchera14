.class public final Lcom/android/launcher3/util/LogableGridOccupancy;
.super Lcom/android/launcher3/util/GridOccupancy;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/LogableGridOccupancy$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/util/LogableGridOccupancy$Companion;

.field private static final TAG:Ljava/lang/String; = "LogableGridOccupancy"


# instance fields
.field private logs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/util/LogableGridOccupancy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/LogableGridOccupancy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/util/LogableGridOccupancy;->Companion:Lcom/android/launcher3/util/LogableGridOccupancy$Companion;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/LogableGridOccupancy;->logs:Ljava/util/HashMap;

    return-void
.end method

.method public static final generateCellPrintInfo(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/LogableGridOccupancy;->Companion:Lcom/android/launcher3/util/LogableGridOccupancy$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/util/LogableGridOccupancy$Companion;->generateCellPrintInfo(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method private final generateLogKey(II)Ljava/lang/String;
    .registers 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic toString$default(Lcom/android/launcher3/util/LogableGridOccupancy;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/LogableGridOccupancy;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getLogs()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/util/LogableGridOccupancy;->logs:Ljava/util/HashMap;

    return-object p0
.end method

.method public final markCells(IIIIZLjava/lang/String;)V
    .registers 12

    const-string v0, "logMsg"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_4d

    if-gez p2, :cond_a

    goto :goto_4d

    :cond_a
    const/4 v0, 0x0

    move v1, p1

    :goto_c
    add-int v2, p1, p3

    if-ge v1, v2, :cond_4d

    iget v2, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountX:I

    if-ge v1, v2, :cond_4d

    move v2, p2

    :goto_15
    add-int v3, p2, p4

    if-ge v2, v3, :cond_4a

    iget v3, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountY:I

    if-ge v2, v3, :cond_4a

    iget-object v3, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->cells:[[Z

    aget-object v3, v3, v1

    aput-boolean p5, v3, v2

    if-eqz p5, :cond_3e

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/android/launcher3/util/LogableGridOccupancy;->logs:Ljava/util/HashMap;

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/util/LogableGridOccupancy;->generateLogKey(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    :cond_31
    iget-object v0, p0, Lcom/android/launcher3/util/LogableGridOccupancy;->logs:Ljava/util/HashMap;

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/util/LogableGridOccupancy;->generateLogKey(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "***"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3c
    const/4 v0, 0x1

    goto :goto_47

    :cond_3e
    iget-object v3, p0, Lcom/android/launcher3/util/LogableGridOccupancy;->logs:Ljava/util/HashMap;

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/util/LogableGridOccupancy;->generateLogKey(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_4d
    :goto_4d
    return-void
.end method

.method public final markCells(Landroid/graphics/Rect;ZLjava/lang/String;)V
    .registers 12

    const-string/jumbo v0, "r"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logMsg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v1, p0

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/util/LogableGridOccupancy;->markCells(IIIIZLjava/lang/String;)V

    return-void
.end method

.method public final markCells(Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)V
    .registers 12

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logMsg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v1, p0

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/util/LogableGridOccupancy;->markCells(IIIIZLjava/lang/String;)V

    return-void
.end method

.method public final markCells(Lcom/android/launcher3/util/CellAndSpan;ZLjava/lang/String;)V
    .registers 12

    const-string v0, "cell"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logMsg"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v3, p1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v4, p1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v5, p1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    move-object v1, p0

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/util/LogableGridOccupancy;->markCells(IIIIZLjava/lang/String;)V

    return-void
.end method

.method public final setLogs(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/util/LogableGridOccupancy;->logs:Ljava/util/HashMap;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/util/LogableGridOccupancy;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 14

    const-string/jumbo v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountY:I

    const/4 v4, 0x0

    move v5, v4

    :goto_1c
    if-ge v5, v3, :cond_43

    iget v6, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountX:I

    move v7, v4

    :goto_21
    if-ge v7, v6, :cond_37

    sget-object v8, Lcom/android/launcher3/util/LogableGridOccupancy;->Companion:Lcom/android/launcher3/util/LogableGridOccupancy$Companion;

    iget-object v9, p0, Lcom/android/launcher3/util/LogableGridOccupancy;->logs:Ljava/util/HashMap;

    invoke-direct {p0, v7, v5}, Lcom/android/launcher3/util/LogableGridOccupancy;->generateLogKey(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9, v0, p2}, Lcom/android/launcher3/util/LogableGridOccupancy$Companion;->generateCellPrintInfo(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    :cond_37
    iget v6, p0, Lcom/android/launcher3/util/OplusBaseGridOccupancy;->mCountY:I

    add-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_40

    invoke-static {v0, v1, p1, v2}, Landroidx/concurrent/futures/d;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "sb.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
