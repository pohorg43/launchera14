.class public final Ly6/j$d;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly6/j;-><init>(Lx6/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Ly6/j$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ly6/j$d;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ly6/j$d;

    invoke-direct {v0}, Ly6/j$d;-><init>()V

    sput-object v0, Ly6/j$d;->a:Ly6/j$d;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    new-instance p0, Ly6/j$b;

    sget-object p1, La7/j;->a:La7/j;

    sget-object p1, La7/j;->d:Ly6/l0;

    invoke-static {p1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ly6/j$b;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method
