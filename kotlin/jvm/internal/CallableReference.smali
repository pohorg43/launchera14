.class public abstract Lkotlin/jvm/internal/CallableReference;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lz4/c;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/jvm/internal/CallableReference$NoReceiver;
    }
.end annotation


# static fields
.field public static final NO_RECEIVER:Ljava/lang/Object;


# instance fields
.field private final isTopLevel:Z

.field private final name:Ljava/lang/String;

.field private final owner:Ljava/lang/Class;

.field public final receiver:Ljava/lang/Object;

.field private transient reflected:Lz4/c;

.field private final signature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lkotlin/jvm/internal/CallableReference$NoReceiver;->access$000()Lkotlin/jvm/internal/CallableReference$NoReceiver;

    move-result-object v0

    sput-object v0, Lkotlin/jvm/internal/CallableReference;->NO_RECEIVER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lkotlin/jvm/internal/CallableReference;->NO_RECEIVER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/CallableReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/CallableReference;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    iput-object p2, p0, Lkotlin/jvm/internal/CallableReference;->owner:Ljava/lang/Class;

    iput-object p3, p0, Lkotlin/jvm/internal/CallableReference;->name:Ljava/lang/String;

    iput-object p4, p0, Lkotlin/jvm/internal/CallableReference;->signature:Ljava/lang/String;

    iput-boolean p5, p0, Lkotlin/jvm/internal/CallableReference;->isTopLevel:Z

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lz4/c;

    move-result-object p0

    invoke-interface {p0, p1}, Lz4/c;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public callBy(Ljava/util/Map;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lz4/c;

    move-result-object p0

    invoke-interface {p0, p1}, Lz4/c;->callBy(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public compute()Lz4/c;
    .registers 2

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->reflected:Lz4/c;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->computeReflected()Lz4/c;

    move-result-object v0

    iput-object v0, p0, Lkotlin/jvm/internal/CallableReference;->reflected:Lz4/c;

    :cond_a
    return-object v0
.end method

.method public abstract computeReflected()Lz4/c;
.end method

.method public getAnnotations()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lz4/c;

    move-result-object p0

    invoke-interface {p0}, Lz4/b;->getAnnotations()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBoundReceiver()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getOwner()Lz4/g;
    .registers 2

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->owner:Ljava/lang/Class;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_13

    :cond_6
    iget-boolean p0, p0, Lkotlin/jvm/internal/CallableReference;->isTopLevel:Z

    if-eqz p0, :cond_f

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinPackage(Ljava/lang/Class;)Lz4/g;

    move-result-object p0

    goto :goto_13

    :cond_f
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    :goto_13
    return-object p0
.end method

.method public getParameters()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz4/m;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lz4/c;

    move-result-object p0

    invoke-interface {p0}, Lz4/c;->getParameters()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getReflected()Lz4/c;
    .registers 2

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->compute()Lz4/c;

    move-result-object v0

    if-eq v0, p0, :cond_7

    return-object v0

    :cond_7
    new-instance p0, Lkotlin/jvm/KotlinReflectionNotSupportedError;

    invoke-direct {p0}, Lkotlin/jvm/KotlinReflectionNotSupportedError;-><init>()V

    throw p0
.end method

.method public getReturnType()Lz4/r;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lz4/c;

    move-result-object p0

    invoke-interface {p0}, Lz4/c;->getReturnType()Lz4/r;

    move-result-object p0

    return-object p0
.end method

.method public getSignature()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->signature:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeParameters()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lz4/s;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lz4/c;

    move-result-object p0

    invoke-interface {p0}, Lz4/c;->getTypeParameters()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getVisibility()Lz4/v;
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lz4/c;

    move-result-object p0

    invoke-interface {p0}, Lz4/c;->getVisibility()Lz4/v;

    move-result-object p0

    return-object p0
.end method

.method public isAbstract()Z
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lz4/c;

    move-result-object p0

    invoke-interface {p0}, Lz4/c;->isAbstract()Z

    move-result p0

    return p0
.end method

.method public isFinal()Z
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lz4/c;

    move-result-object p0

    invoke-interface {p0}, Lz4/c;->isFinal()Z

    move-result p0

    return p0
.end method

.method public isOpen()Z
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lz4/c;

    move-result-object p0

    invoke-interface {p0}, Lz4/c;->isOpen()Z

    move-result p0

    return p0
.end method

.method public isSuspend()Z
    .registers 1

    invoke-virtual {p0}, Lkotlin/jvm/internal/CallableReference;->getReflected()Lz4/c;

    move-result-object p0

    invoke-interface {p0}, Lz4/c;->isSuspend()Z

    move-result p0

    return p0
.end method
