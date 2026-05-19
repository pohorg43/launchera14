.class public final enum Lk6/o$c$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk6/o$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk6/o$c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lk6/o$c$a;

.field public static final enum b:Lk6/o$c$a;

.field public static final enum c:Lk6/o$c$a;

.field public static final synthetic d:[Lk6/o$c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lk6/o$c$a;

    const-string v1, "OVERRIDABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lk6/o$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk6/o$c$a;->a:Lk6/o$c$a;

    new-instance v1, Lk6/o$c$a;

    const-string v3, "INCOMPATIBLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lk6/o$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lk6/o$c$a;->b:Lk6/o$c$a;

    new-instance v3, Lk6/o$c$a;

    const-string v5, "CONFLICT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lk6/o$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lk6/o$c$a;->c:Lk6/o$c$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lk6/o$c$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lk6/o$c$a;->d:[Lk6/o$c$a;

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

.method public static valueOf(Ljava/lang/String;)Lk6/o$c$a;
    .registers 2

    const-class v0, Lk6/o$c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk6/o$c$a;

    return-object p0
.end method

.method public static values()[Lk6/o$c$a;
    .registers 1

    sget-object v0, Lk6/o$c$a;->d:[Lk6/o$c$a;

    invoke-virtual {v0}, [Lk6/o$c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk6/o$c$a;

    return-object v0
.end method
