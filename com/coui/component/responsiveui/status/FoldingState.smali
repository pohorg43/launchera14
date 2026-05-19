.class public final enum Lcom/coui/component/responsiveui/status/FoldingState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/coui/component/responsiveui/status/FoldingState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FOLD:Lcom/coui/component/responsiveui/status/FoldingState;

.field public static final enum UNFOLD:Lcom/coui/component/responsiveui/status/FoldingState;

.field public static final enum UNKNOWN:Lcom/coui/component/responsiveui/status/FoldingState;

.field public static final synthetic a:[Lcom/coui/component/responsiveui/status/FoldingState;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/coui/component/responsiveui/status/FoldingState;

    const-string v1, "FOLD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coui/component/responsiveui/status/FoldingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/coui/component/responsiveui/status/FoldingState;->FOLD:Lcom/coui/component/responsiveui/status/FoldingState;

    new-instance v1, Lcom/coui/component/responsiveui/status/FoldingState;

    const-string v3, "UNFOLD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/coui/component/responsiveui/status/FoldingState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/coui/component/responsiveui/status/FoldingState;->UNFOLD:Lcom/coui/component/responsiveui/status/FoldingState;

    new-instance v3, Lcom/coui/component/responsiveui/status/FoldingState;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/coui/component/responsiveui/status/FoldingState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/coui/component/responsiveui/status/FoldingState;->UNKNOWN:Lcom/coui/component/responsiveui/status/FoldingState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/coui/component/responsiveui/status/FoldingState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/coui/component/responsiveui/status/FoldingState;->a:[Lcom/coui/component/responsiveui/status/FoldingState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/coui/component/responsiveui/status/FoldingState;
    .registers 2

    const-class v0, Lcom/coui/component/responsiveui/status/FoldingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/coui/component/responsiveui/status/FoldingState;

    return-object p0
.end method

.method public static values()[Lcom/coui/component/responsiveui/status/FoldingState;
    .registers 1

    sget-object v0, Lcom/coui/component/responsiveui/status/FoldingState;->a:[Lcom/coui/component/responsiveui/status/FoldingState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/coui/component/responsiveui/status/FoldingState;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
