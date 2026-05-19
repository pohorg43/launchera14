.class public final Ly6/m0$d;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly6/m0;->i(Ly6/g1;Ly6/j1;Ljava/util/List;ZLr6/i;)Ly6/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lz6/f;",
        "Ly6/s0;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKotlinTypeFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinTypeFactory.kt\norg/jetbrains/kotlin/types/KotlinTypeFactory$simpleTypeWithNonTrivialMemberScope$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,301:1\n1#2:302\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Ly6/j1;

.field public final synthetic b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ly6/q1;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Ly6/g1;

.field public final synthetic d:Z

.field public final synthetic e:Lr6/i;


# direct methods
.method public constructor <init>(Ly6/j1;Ljava/util/List;Ly6/g1;ZLr6/i;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/j1;",
            "Ljava/util/List<",
            "+",
            "Ly6/q1;",
            ">;",
            "Ly6/g1;",
            "Z",
            "Lr6/i;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Ly6/m0$d;->a:Ly6/j1;

    iput-object p2, p0, Ly6/m0$d;->b:Ljava/util/List;

    iput-object p3, p0, Ly6/m0$d;->c:Ly6/g1;

    iput-boolean p4, p0, Ly6/m0$d;->d:Z

    iput-object p5, p0, Ly6/m0$d;->e:Lr6/i;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lz6/f;

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly6/m0;->a:Ly6/m0;

    iget-object v1, p0, Ly6/m0$d;->a:Ly6/j1;

    iget-object v2, p0, Ly6/m0$d;->b:Ljava/util/List;

    invoke-static {v0, v1, p1, v2}, Ly6/m0;->a(Ly6/m0;Ly6/j1;Lz6/f;Ljava/util/List;)Ly6/m0$b;

    move-result-object p1

    if-nez p1, :cond_15

    const/4 p0, 0x0

    goto :goto_2c

    :cond_15
    iget-object v0, p1, Ly6/m0$b;->a:Ly6/s0;

    if-eqz v0, :cond_1b

    move-object p0, v0

    goto :goto_2c

    :cond_1b
    iget-object v0, p0, Ly6/m0$d;->c:Ly6/g1;

    iget-object p1, p1, Ly6/m0$b;->b:Ly6/j1;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Ly6/m0$d;->b:Ljava/util/List;

    iget-boolean v2, p0, Ly6/m0$d;->d:Z

    iget-object p0, p0, Ly6/m0$d;->e:Lr6/i;

    invoke-static {v0, p1, v1, v2, p0}, Ly6/m0;->i(Ly6/g1;Ly6/j1;Ljava/util/List;ZLr6/i;)Ly6/s0;

    move-result-object p0

    :goto_2c
    return-object p0
.end method
