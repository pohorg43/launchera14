.class public final Lc3/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final c:Lc3/b;

.field public static final d:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Lc3/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lm7/s1;

.field public final b:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    sget-object v0, Lkotlin/a;->a:Lkotlin/a;

    sget-object v1, Lc3/b$a;->a:Lc3/b$a;

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lc3/b;->d:Lh4/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lc3/b$b;->a:Lc3/b$b;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lc3/b;->b:Lh4/f;

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lc3/b$b;->a:Lc3/b$b;

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lc3/b;->b:Lh4/f;

    return-void
.end method
