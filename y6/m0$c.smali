.class public final Ly6/m0$c;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly6/m0;->f(Ly6/g1;Ly6/j1;Ljava/util/List;ZLz6/f;)Ly6/s0;
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
        "SMAP\nKotlinTypeFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinTypeFactory.kt\norg/jetbrains/kotlin/types/KotlinTypeFactory$simpleType$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,301:1\n1#2:302\n*E\n"
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


# direct methods
.method public constructor <init>(Ly6/j1;Ljava/util/List;Ly6/g1;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/j1;",
            "Ljava/util/List<",
            "+",
            "Ly6/q1;",
            ">;",
            "Ly6/g1;",
            "Z)V"
        }
    .end annotation

    iput-object p1, p0, Ly6/m0$c;->a:Ly6/j1;

    iput-object p2, p0, Ly6/m0$c;->b:Ljava/util/List;

    iput-object p3, p0, Ly6/m0$c;->c:Ly6/g1;

    iput-boolean p4, p0, Ly6/m0$c;->d:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lz6/f;

    const-string v0, "refiner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly6/m0;->a:Ly6/m0;

    iget-object v1, p0, Ly6/m0$c;->a:Ly6/j1;

    iget-object v2, p0, Ly6/m0$c;->b:Ljava/util/List;

    invoke-static {v0, v1, p1, v2}, Ly6/m0;->a(Ly6/m0;Ly6/j1;Lz6/f;Ljava/util/List;)Ly6/m0$b;

    move-result-object v0

    if-nez v0, :cond_15

    const/4 p0, 0x0

    goto :goto_2a

    :cond_15
    iget-object v1, v0, Ly6/m0$b;->a:Ly6/s0;

    if-eqz v1, :cond_1b

    move-object p0, v1

    goto :goto_2a

    :cond_1b
    iget-object v1, p0, Ly6/m0$c;->c:Ly6/g1;

    iget-object v0, v0, Ly6/m0$b;->b:Ly6/j1;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Ly6/m0$c;->b:Ljava/util/List;

    iget-boolean p0, p0, Ly6/m0$c;->d:Z

    invoke-static {v1, v0, v2, p0, p1}, Ly6/m0;->f(Ly6/g1;Ly6/j1;Ljava/util/List;ZLz6/f;)Ly6/s0;

    move-result-object p0

    :goto_2a
    return-object p0
.end method
