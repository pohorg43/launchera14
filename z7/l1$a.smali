.class public final Lz7/l1$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz7/l1;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;
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

    iput-object p1, p0, Lz7/l1$a;->a:Lz7/l1;

    iput-object p2, p0, Lz7/l1$a;->b:Lw7/a;

    iput-object p3, p0, Lz7/l1$a;->c:Ljava/lang/Object;

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

    iget-object v0, p0, Lz7/l1$a;->a:Lz7/l1;

    check-cast v0, Lb8/a;

    invoke-virtual {v0}, Lb8/a;->T()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    instance-of v0, v0, La8/r;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lz7/l1$a;->a:Lz7/l1;

    iget-object p0, p0, Lz7/l1$a;->b:Lw7/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deserializer"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lz7/l1;->x(Lw7/a;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_25

    :cond_1f
    iget-object p0, p0, Lz7/l1$a;->a:Lz7/l1;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    :goto_25
    return-object p0
.end method
