.class public abstract Ld5/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld5/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld5/g$d;,
        Ld5/g$c;,
        Ld5/g$b;,
        Ld5/g$a;,
        Ld5/g$g;,
        Ld5/g$e;,
        Ld5/g$f;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Ljava/lang/reflect/Member;",
        ">",
        "Ljava/lang/Object;",
        "Ld5/f<",
        "TM;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCallerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CallerImpl.kt\nkotlin/reflect/jvm/internal/calls/CallerImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,250:1\n1#2:251\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Member;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/reflect/Type;

.field public final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld5/g;->a:Ljava/lang/reflect/Member;

    iput-object p2, p0, Ld5/g;->b:Ljava/lang/reflect/Type;

    iput-object p3, p0, Ld5/g;->c:Ljava/lang/Class;

    if-eqz p3, :cond_27

    new-instance p1, Lkotlin/jvm/internal/SpreadBuilder;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lkotlin/jvm/internal/SpreadBuilder;-><init>(I)V

    invoke-virtual {p1, p3}, Lkotlin/jvm/internal/SpreadBuilder;->add(Ljava/lang/Object;)V

    invoke-virtual {p1, p4}, Lkotlin/jvm/internal/SpreadBuilder;->addSpread(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lkotlin/jvm/internal/SpreadBuilder;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/reflect/Type;

    invoke-virtual {p1, p2}, Lkotlin/jvm/internal/SpreadBuilder;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2b

    :cond_27
    invoke-static {p4}, Li4/k;->O([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :cond_2b
    iput-object p1, p0, Ld5/g;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ld5/g;->d:Ljava/util/List;

    return-object p0
.end method

.method public final b()Ljava/lang/reflect/Member;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    iget-object p0, p0, Ld5/g;->a:Ljava/lang/reflect/Member;

    return-object p0
.end method

.method public c([Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Ld5/f$a;->a(Ld5/f;[Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .registers 2

    if-eqz p1, :cond_f

    iget-object p0, p0, Ld5/g;->a:Ljava/lang/reflect/Member;

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "An object member requires the object instance passed as the first argument."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getReturnType()Ljava/lang/reflect/Type;
    .registers 1

    iget-object p0, p0, Ld5/g;->b:Ljava/lang/reflect/Type;

    return-object p0
.end method
