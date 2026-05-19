.class public abstract enum Lz6/t$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz6/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz6/t$a$c;,
        Lz6/t$a$a;,
        Lz6/t$a$d;,
        Lz6/t$a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lz6/t$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lz6/t$a;

.field public static final enum b:Lz6/t$a;

.field public static final enum c:Lz6/t$a;

.field public static final enum d:Lz6/t$a;

.field public static final synthetic e:[Lz6/t$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lz6/t$a$c;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz6/t$a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lz6/t$a;->a:Lz6/t$a;

    new-instance v1, Lz6/t$a$a;

    const-string v3, "ACCEPT_NULL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lz6/t$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lz6/t$a;->b:Lz6/t$a;

    new-instance v3, Lz6/t$a$d;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lz6/t$a$d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lz6/t$a;->c:Lz6/t$a;

    new-instance v5, Lz6/t$a$b;

    const-string v7, "NOT_NULL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lz6/t$a$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lz6/t$a;->d:Lz6/t$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lz6/t$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lz6/t$a;->e:[Lz6/t$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz6/t$a;
    .registers 2

    const-class v0, Lz6/t$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz6/t$a;

    return-object p0
.end method

.method public static values()[Lz6/t$a;
    .registers 1

    sget-object v0, Lz6/t$a;->e:[Lz6/t$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz6/t$a;

    return-object v0
.end method


# virtual methods
.method public abstract a(Ly6/d2;)Lz6/t$a;
.end method

.method public final b(Ly6/d2;)Lz6/t$a;
    .registers 10

    sget-object p0, Lz6/t$a;->d:Lz6/t$a;

    sget-object v0, Lz6/t$a;->c:Lz6/t$a;

    const-string v1, "<this>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ly6/l0;->G0()Z

    move-result v1

    if-eqz v1, :cond_12

    sget-object p0, Lz6/t$a;->b:Lz6/t$a;

    goto :goto_44

    :cond_12
    instance-of v1, p1, Ly6/u;

    if-eqz v1, :cond_20

    move-object v1, p1

    check-cast v1, Ly6/u;

    iget-object v1, v1, Ly6/u;->b:Ly6/s0;

    instance-of v1, v1, Ly6/a1;

    if-eqz v1, :cond_20

    goto :goto_44

    :cond_20
    instance-of v1, p1, Ly6/a1;

    if-eqz v1, :cond_25

    goto :goto_43

    :cond_25
    const-string v1, "type"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lz6/p;->a:Lz6/p;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static/range {v2 .. v7}, Lz6/a;->b(ZZLz6/b;Lz6/e;Lz6/f;I)Ly6/i1;

    move-result-object v1

    invoke-static {p1}, Ly6/h0;->c(Ly6/l0;)Ly6/s0;

    move-result-object p1

    sget-object v2, Ly6/i1$b$b;->a:Ly6/i1$b$b;

    invoke-static {v1, p1, v2}, Ly6/d;->a(Ly6/i1;Lc7/k;Ly6/i1$b;)Z

    move-result p1

    if-eqz p1, :cond_43

    goto :goto_44

    :cond_43
    :goto_43
    move-object p0, v0

    :goto_44
    return-object p0
.end method
