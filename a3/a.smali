.class public final La3/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lm7/j0;


# static fields
.field public static final b:La3/a;

.field public static c:Lcom/pantanal/server/content/recommendlist/ListObserver;

.field public static d:Lm7/s1;

.field public static final e:Lh4/f;

.field public static final f:La3/a$a;


# instance fields
.field public final synthetic a:Lm7/j0;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, La3/a;

    invoke-direct {v0}, La3/a;-><init>()V

    sput-object v0, La3/a;->b:La3/a;

    sget-object v0, La3/a$c;->a:La3/a$c;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, La3/a;->e:Lh4/f;

    new-instance v0, La3/a$a;

    invoke-direct {v0}, La3/a$a;-><init>()V

    sput-object v0, La3/a;->f:La3/a$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lm7/k0;->b()Lm7/j0;

    move-result-object v0

    iput-object v0, p0, La3/a;->a:Lm7/j0;

    return-void
.end method


# virtual methods
.method public final a()La3/b;
    .registers 1

    sget-object p0, La3/a;->e:Lh4/f;

    check-cast p0, Lh4/n;

    invoke-virtual {p0}, Lh4/n;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La3/b;

    return-object p0
.end method

.method public final b()V
    .registers 7

    new-instance v3, La3/a$b;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, La3/a$b;-><init>(Ll4/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object p0

    sput-object p0, La3/a;->d:Lm7/s1;

    return-void
.end method

.method public final c()V
    .registers 8

    invoke-virtual {p0}, La3/a;->a()La3/b;

    move-result-object p0

    sget-object v0, La3/a;->f:La3/a$a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "observer"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lk3/l;->a:Lk3/l;

    sget-object p0, Lm7/y0;->a:Lm7/y0;

    invoke-static {p0}, Lk3/l;->a(Lm7/y0;)Lm7/j1;

    move-result-object p0

    invoke-static {p0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v1

    new-instance v4, La3/d;

    const/4 p0, 0x0

    invoke-direct {v4, v0, p0}, La3/d;-><init>(Landroid/database/ContentObserver;Ll4/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object p0

    sput-object p0, La3/b;->b:Lm7/s1;

    return-void
.end method

.method public getCoroutineContext()Ll4/f;
    .registers 1

    iget-object p0, p0, La3/a;->a:Lm7/j0;

    invoke-interface {p0}, Lm7/j0;->getCoroutineContext()Ll4/f;

    move-result-object p0

    return-object p0
.end method
