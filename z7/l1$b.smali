.class public final Lz7/l1$b;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz7/l1;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lz7/l1;

.field public final synthetic b:Lw7/a;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lz7/l1;Lw7/a;Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lz7/l1$b;->a:Lz7/l1;

    iput-object p2, p0, Lz7/l1$b;->b:Lw7/a;

    iput-object p3, p0, Lz7/l1$b;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lz7/l1$b;->a:Lz7/l1;

    iget-object p0, p0, Lz7/l1$b;->b:Lw7/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deserializer"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lz7/l1;->x(Lw7/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
