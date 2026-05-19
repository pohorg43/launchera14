.class public final enum Lq5/f;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq5/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lq5/f;

.field public static final enum b:Lq5/f;

.field public static final synthetic c:[Lq5/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lq5/f;

    const-string v1, "PACKAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lq5/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq5/f;->a:Lq5/f;

    new-instance v1, Lq5/f;

    const-string v3, "CLASSIFIER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lq5/f;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lq5/f;->b:Lq5/f;

    const/4 v3, 0x2

    new-array v3, v3, [Lq5/f;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lq5/f;->c:[Lq5/f;

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

.method public static valueOf(Ljava/lang/String;)Lq5/f;
    .registers 2

    const-class v0, Lq5/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq5/f;

    return-object p0
.end method

.method public static values()[Lq5/f;
    .registers 1

    sget-object v0, Lq5/f;->c:[Lq5/f;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq5/f;

    return-object v0
.end method
