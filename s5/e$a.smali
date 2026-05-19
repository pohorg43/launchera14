.class public final Ls5/e$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls5/e;-><init>(Ly5/a;Lu5/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Lh6/f;",
        "+",
        "Lm6/v;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Ls5/e$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ls5/e$a;

    invoke-direct {v0}, Ls5/e$a;-><init>()V

    sput-object v0, Ls5/e$a;->a:Ls5/e$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 3

    sget-object p0, Ls5/c;->a:Ls5/c;

    sget-object p0, Ls5/c;->b:Lh6/f;

    new-instance v0, Lm6/v;

    const-string v1, "Deprecated in Java"

    invoke-direct {v0, v1}, Lm6/v;-><init>(Ljava/lang/String;)V

    new-instance v1, Lh4/j;

    invoke-direct {v1, p0, v0}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Li4/j0;->c(Lh4/j;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
