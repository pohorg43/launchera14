.class public final Lcom/coui/component/responsiveui/window/WindowSizeClass;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;


# instance fields
.field public final a:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

.field public final b:Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

.field public final c:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/component/responsiveui/window/WindowSizeClass;->Companion:Lcom/coui/component/responsiveui/window/WindowSizeClass$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coui/component/responsiveui/window/WindowSizeClass;->a:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    iput-object p2, p0, Lcom/coui/component/responsiveui/window/WindowSizeClass;->b:Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

    iput-object p3, p0, Lcom/coui/component/responsiveui/window/WindowSizeClass;->c:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    const-class v2, Lcom/coui/component/responsiveui/window/WindowSizeClass;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_10

    goto :goto_34

    :cond_10
    check-cast p1, Lcom/coui/component/responsiveui/window/WindowSizeClass;

    iget-object v2, p0, Lcom/coui/component/responsiveui/window/WindowSizeClass;->a:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    iget-object v3, p1, Lcom/coui/component/responsiveui/window/WindowSizeClass;->a:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    return v1

    :cond_1d
    iget-object v2, p0, Lcom/coui/component/responsiveui/window/WindowSizeClass;->b:Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

    iget-object v3, p1, Lcom/coui/component/responsiveui/window/WindowSizeClass;->b:Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    return v1

    :cond_28
    iget-object p0, p0, Lcom/coui/component/responsiveui/window/WindowSizeClass;->c:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    iget-object p1, p1, Lcom/coui/component/responsiveui/window/WindowSizeClass;->c:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    return v1

    :cond_33
    return v0

    :cond_34
    :goto_34
    return v1
.end method

.method public final getWindowHeightSizeClass()Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;
    .registers 1

    iget-object p0, p0, Lcom/coui/component/responsiveui/window/WindowSizeClass;->b:Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

    return-object p0
.end method

.method public final getWindowTotalSizeClass()Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;
    .registers 1

    iget-object p0, p0, Lcom/coui/component/responsiveui/window/WindowSizeClass;->c:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    return-object p0
.end method

.method public final getWindowWidthSizeClass()Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;
    .registers 1

    iget-object p0, p0, Lcom/coui/component/responsiveui/window/WindowSizeClass;->a:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/coui/component/responsiveui/window/WindowSizeClass;->a:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/coui/component/responsiveui/window/WindowSizeClass;->b:Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/coui/component/responsiveui/window/WindowSizeClass;->c:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "WindowSizeClass("

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coui/component/responsiveui/window/WindowSizeClass;->a:Lcom/coui/component/responsiveui/window/WindowWidthSizeClass;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coui/component/responsiveui/window/WindowSizeClass;->b:Lcom/coui/component/responsiveui/window/WindowHeightSizeClass;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coui/component/responsiveui/window/WindowSizeClass;->c:Lcom/coui/component/responsiveui/window/WindowTotalSizeClass;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
