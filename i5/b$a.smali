.class public final enum Li5/b$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li5/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li5/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Li5/b$a;

.field public static final enum b:Li5/b$a;

.field public static final enum c:Li5/b$a;

.field public static final enum d:Li5/b$a;

.field public static final synthetic e:[Li5/b$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Li5/b$a;

    const-string v1, "DECLARATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li5/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Li5/b$a;->a:Li5/b$a;

    new-instance v1, Li5/b$a;

    const-string v3, "FAKE_OVERRIDE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Li5/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Li5/b$a;->b:Li5/b$a;

    new-instance v3, Li5/b$a;

    const-string v5, "DELEGATION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Li5/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Li5/b$a;->c:Li5/b$a;

    new-instance v5, Li5/b$a;

    const-string v7, "SYNTHESIZED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Li5/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Li5/b$a;->d:Li5/b$a;

    const/4 v7, 0x4

    new-array v7, v7, [Li5/b$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Li5/b$a;->e:[Li5/b$a;

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

.method public static valueOf(Ljava/lang/String;)Li5/b$a;
    .registers 2

    const-class v0, Li5/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li5/b$a;

    return-object p0
.end method

.method public static values()[Li5/b$a;
    .registers 1

    sget-object v0, Li5/b$a;->e:[Li5/b$a;

    invoke-virtual {v0}, [Li5/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li5/b$a;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .registers 2

    sget-object v0, Li5/b$a;->b:Li5/b$a;

    if-eq p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method
