.class public final Lp6/e$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp6/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:Lp6/e$a;

.field public static final b:Lp6/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lp6/e$a;

    invoke-direct {v0}, Lp6/e$a;-><init>()V

    sput-object v0, Lp6/e$a;->a:Lp6/e$a;

    new-instance v0, Lp6/a;

    sget-object v1, Li4/y;->a:Li4/y;

    invoke-direct {v0, v1}, Lp6/a;-><init>(Ljava/util/List;)V

    sput-object v0, Lp6/e$a;->b:Lp6/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
