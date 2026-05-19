.class public final Lu7/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 OnTimeout.kt\nkotlinx/coroutines/selects/OnTimeout\n*L\n1#1,18:1\n57#2,2:19\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lu7/h;

.field public final synthetic b:Lu7/c;


# direct methods
.method public constructor <init>(Lu7/h;Lu7/c;)V
    .registers 3

    iput-object p1, p0, Lu7/a;->a:Lu7/h;

    iput-object p2, p0, Lu7/a;->b:Lu7/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lu7/a;->a:Lu7/h;

    iget-object p0, p0, Lu7/a;->b:Lu7/c;

    sget-object v1, Lh4/z;->a:Lh4/z;

    invoke-interface {v0, p0, v1}, Lu7/h;->f(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
