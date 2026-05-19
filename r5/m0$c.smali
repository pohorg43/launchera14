.class public enum Lr5/m0$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr5/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr5/m0$c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lr5/m0$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lr5/m0$c;

.field public static final enum c:Lr5/m0$c;

.field public static final enum d:Lr5/m0$c;

.field public static final enum e:Lr5/m0$c;

.field public static final synthetic f:[Lr5/m0$c;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v0, Lr5/m0$c;

    const-string v1, "NULL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lr5/m0$c;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lr5/m0$c;->b:Lr5/m0$c;

    new-instance v1, Lr5/m0$c;

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "INDEX"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lr5/m0$c;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v1, Lr5/m0$c;->c:Lr5/m0$c;

    new-instance v3, Lr5/m0$c;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v6, "FALSE"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lr5/m0$c;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v3, Lr5/m0$c;->d:Lr5/m0$c;

    new-instance v4, Lr5/m0$c$a;

    const-string v6, "MAP_GET_OR_DEFAULT"

    const/4 v8, 0x3

    invoke-direct {v4, v6, v8}, Lr5/m0$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lr5/m0$c;->e:Lr5/m0$c;

    const/4 v6, 0x4

    new-array v6, v6, [Lr5/m0$c;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v3, v6, v7

    aput-object v4, v6, v8

    sput-object v6, Lr5/m0$c;->f:[Lr5/m0$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lr5/m0$c;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lr5/m0$c;->a:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lr5/m0$c;
    .registers 2

    const-class v0, Lr5/m0$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lr5/m0$c;

    return-object p0
.end method

.method public static values()[Lr5/m0$c;
    .registers 1

    sget-object v0, Lr5/m0$c;->f:[Lr5/m0$c;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr5/m0$c;

    return-object v0
.end method
