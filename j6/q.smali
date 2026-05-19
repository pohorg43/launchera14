.class public abstract enum Lj6/q;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj6/q$b;,
        Lj6/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lj6/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lj6/q;

.field public static final enum b:Lj6/q;

.field public static final synthetic c:[Lj6/q;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lj6/q$b;

    const-string v1, "PLAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lj6/q$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lj6/q;->a:Lj6/q;

    new-instance v1, Lj6/q$a;

    const-string v3, "HTML"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lj6/q$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lj6/q;->b:Lj6/q;

    const/4 v3, 0x2

    new-array v3, v3, [Lj6/q;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lj6/q;->c:[Lj6/q;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj6/q;
    .registers 2

    const-class v0, Lj6/q;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj6/q;

    return-object p0
.end method

.method public static values()[Lj6/q;
    .registers 1

    sget-object v0, Lj6/q;->c:[Lj6/q;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj6/q;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method
