.class public final Lj6/k;
.super Lv4/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv4/a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDelegates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delegates.kt\nkotlin/properties/Delegates$vetoable$1\n+ 2 DescriptorRendererOptionsImpl.kt\norg/jetbrains/kotlin/renderer/DescriptorRendererOptionsImpl\n*L\n1#1,70:1\n61#2,5:71\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lj6/j;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lj6/j;)V
    .registers 3

    iput-object p2, p0, Lj6/k;->a:Lj6/j;

    invoke-direct {p0, p1}, Lv4/a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public beforeChange(Lz4/n;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz4/n<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const-string p2, "property"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lj6/k;->a:Lj6/j;

    iget-boolean p0, p0, Lj6/j;->a:Z

    if-nez p0, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot modify readonly DescriptorRendererOptions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
