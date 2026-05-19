.class final enum Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/indicator/COUIPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DotSizeLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

.field public static final enum b:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

.field public static final enum c:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

.field public static final enum d:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

.field public static final synthetic e:[Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    const-string v1, "LARGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->a:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    new-instance v1, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    const-string v3, "MEDIUM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->b:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    new-instance v3, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    const-string v5, "SMALL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->c:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    new-instance v5, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    const-string v7, "GONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->d:Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->e:[Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;
    .registers 2

    const-class v0, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    return-object p0
.end method

.method public static values()[Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;
    .registers 1

    sget-object v0, Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->e:[Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    invoke-virtual {v0}, [Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coui/appcompat/indicator/COUIPageIndicator$DotSizeLevel;

    return-object v0
.end method
