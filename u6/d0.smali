.class public final Lu6/d0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu6/d0$a;
    }
.end annotation


# direct methods
.method public static final a(Lu6/c0;Lc6/x;)Li5/t;
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_9

    const/4 p0, -0x1

    goto :goto_11

    :cond_9
    sget-object p0, Lu6/d0$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    :goto_11
    const-string p1, "PRIVATE"

    packed-switch p0, :pswitch_data_4a

    sget-object p0, Li5/s;->a:Li5/t;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_49

    :pswitch_1c  #0x6
    sget-object p0, Li5/s;->f:Li5/t;

    const-string p1, "LOCAL"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_49

    :pswitch_24  #0x5
    sget-object p0, Li5/s;->e:Li5/t;

    const-string p1, "PUBLIC"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_49

    :pswitch_2c  #0x4
    sget-object p0, Li5/s;->c:Li5/t;

    const-string p1, "PROTECTED"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_49

    :pswitch_34  #0x3
    sget-object p0, Li5/s;->b:Li5/t;

    const-string p1, "PRIVATE_TO_THIS"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_49

    :pswitch_3c  #0x2
    sget-object p0, Li5/s;->a:Li5/t;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_49

    :pswitch_42  #0x1
    sget-object p0, Li5/s;->d:Li5/t;

    const-string p1, "INTERNAL"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_49
    return-object p0

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_42  #00000001
        :pswitch_3c  #00000002
        :pswitch_34  #00000003
        :pswitch_2c  #00000004
        :pswitch_24  #00000005
        :pswitch_1c  #00000006
    .end packed-switch
.end method

.method public static final b(Lu6/c0;Lc6/j;)Li5/b$a;
    .registers 4

    sget-object v0, Li5/b$a;->a:Li5/b$a;

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_b

    const/4 p0, -0x1

    goto :goto_13

    :cond_b
    sget-object p0, Lu6/d0$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    :goto_13
    const/4 p1, 0x1

    if-eq p0, p1, :cond_28

    const/4 p1, 0x2

    if-eq p0, p1, :cond_26

    const/4 p1, 0x3

    if-eq p0, p1, :cond_23

    const/4 p1, 0x4

    if-eq p0, p1, :cond_20

    goto :goto_28

    :cond_20
    sget-object v0, Li5/b$a;->d:Li5/b$a;

    goto :goto_28

    :cond_23
    sget-object v0, Li5/b$a;->c:Li5/b$a;

    goto :goto_28

    :cond_26
    sget-object v0, Li5/b$a;->b:Li5/b$a;

    :cond_28
    :goto_28
    return-object v0
.end method
