.class public final Lw6/k$c$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw6/k$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TM;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDeserializedMemberScope.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeserializedMemberScope.kt\norg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedMemberScope$OptimizedImplementation$computeDescriptors$1$1\n*L\n1#1,512:1\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Li6/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/r<",
            "TM;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Ljava/io/ByteArrayInputStream;

.field public final synthetic c:Lw6/k;


# direct methods
.method public constructor <init>(Li6/r;Ljava/io/ByteArrayInputStream;Lw6/k;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/r<",
            "TM;>;",
            "Ljava/io/ByteArrayInputStream;",
            "Lw6/k;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lw6/k$c$a;->a:Li6/r;

    iput-object p2, p0, Lw6/k$c$a;->b:Ljava/io/ByteArrayInputStream;

    iput-object p3, p0, Lw6/k$c$a;->c:Lw6/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lw6/k$c$a;->a:Li6/r;

    iget-object v1, p0, Lw6/k$c$a;->b:Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lw6/k$c$a;->c:Lw6/k;

    iget-object p0, p0, Lw6/k;->b:Lu6/m;

    iget-object p0, p0, Lu6/m;->a:Lu6/k;

    iget-object p0, p0, Lu6/k;->p:Li6/f;

    check-cast v0, Li6/b;

    invoke-virtual {v0, v1, p0}, Li6/b;->c(Ljava/io/InputStream;Li6/f;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li6/p;

    return-object p0
.end method
